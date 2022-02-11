import pcbnew
import itertools

# Generates mechanical layouts for sensorboards.
# You can vary all sorts of parameters and probably get a reasonable
# part placement and board outline instantly, instead of having to
# manually do it and hope that your 1x, 2x, 3x, 4x, etc versions all
# match each other. You still have to route the traces, but the nets
# are correctly defined, so if whatever you make passes DRC without
# any errors, then it'll probably work.

# USAGE:
# run kicad's pcbnew without any input
# import this file into the kicad python interface
# then  make2020offset("CNY70", 3)
# and you'll get a layout using 3 CNY70s in the "2020 offset" configuration.
# for more variety you can call createboard directly.

hole_3mm_fp = ("/usr/share/kicad/footprints/MountingHole.pretty",
               "MountingHole_3.2mm_M3")

sensor_fps = {
    "CNY70": (("/usr/share/kicad/footprints/OptoDevice.pretty",
               "Vishay_CNY70"),
              -90.0),
    "QRE1113GR": (("/usr/share/kicad/footprints/OptoDevice.pretty",
                   "OnSemi_CASE100CY"),
                  -90.0)
}

testpoint_fp = ("/usr/share/kicad/footprints/TestPoint.pretty",
                "TestPoint_Pad_D1.0mm")

def getconnector_fp(sensors):
    lib = "/usr/share/kicad/footprints/Connector_PinHeader_2.54mm.pretty"
    header = f"PinHeader_1x{2+2*sensors:02d}_P2.54mm_Horizontal"
    offset = (0, 0)
    height = 2.54 * 2 + 2.54
    if sensors == 1:
        header = "PinHeader_2x02_P2.54mm_Horizontal"
        offset = (0, -1.27)
        height = 2.54 * 3 + 2.54
    return (lib, header), offset, height

def MakeBoardEdge(start, end):
    l = pcbnew.PCB_SHAPE()
    l.SetShape(0)
    l.SetLayer(44)
    l.SetStart(start)
    l.SetEnd(end)
    return l

def FootprintPadCenterMM(fp):
    x = 0
    y = 0
    cnt = 0
    for p in fp.Pads():
        x += p.GetX()
        y += p.GetY()
        cnt += 1
    cnt *= 1000000
    return (x/cnt, y/cnt)

def GetCreateFP(fplocation, type, idx):
    b = pcbnew.GetBoard()
    ref = f"{type}{idx}"
    fp = pcbnew.FootprintLoad(*fplocation)
    fp.SetReference(ref)
    return fp

def make2040centered(sensor, sensors, sensorspace=12.5, rotation=0.0):
    createboard(sensor,
                sensors,
                sensorspace,
                holerows=[-10, 10],
                boardtop=-20,
                boardbottom=20,
                rotation=rotation,
                msg=f"make2040centered({sensor},{sensors},{sensorspace},{rotation})")

def make2020offset(sensor, sensors, sensorspace=12.5):
    createboard(sensor,
                sensors,
                sensorspace,
                holerows=[-22.5],
                boardtop=-32,
                boardbottom=4,
                msg=f"make2020offset({sensor},{sensors},{sensorspace})")

def createboard(sensor,
                sensors=4,
                sensorspace=12.5,
                holerows=[-10, 10],
                center=(150.0, 100.0),
                boardtop=-20,
                boardbottom=20,
                rotation=0.0,
                msg=""):

    def mkpt(x, y, offset=(0.0, 0.0), center=center):
        return pcbnew.wxPointMM(x+center[0]-offset[0],
                                y+center[1]-offset[1])

    b = pcbnew.GetBoard()

    # generate nets
    nets = { }
    nets['POS'] = pcbnew.NETINFO_ITEM(b, "POS")
    nets['NEG'] = pcbnew.NETINFO_ITEM(b, "NEG")
    for i in range(1, sensors):
        nets[f'P{i}to{i+1}'] = pcbnew.NETINFO_ITEM(b, f"P{i}to{i+1}")
    for i in range(1, sensors+1):
        nets[f'C{i}'] = pcbnew.NETINFO_ITEM(b, f"C{i}")
        nets[f'E{i}'] = pcbnew.NETINFO_ITEM(b, f"E{i}")
    for n in nets.values():
        b.Add(n)

    # body
    left = 0
    right = 0
    top = boardtop
    bottom = boardbottom

    testpoints = sensors + 1
    holecols = max(1, sensors - 1)

    sensor_xs = [ -((sensors - 1) * sensorspace) / 2.0 + sensorspace * i for i in range(sensors) ]
    for idx, x in zip(range(1, sensors+1), sensor_xs):
        sensor_fpid, sensor_rotation = sensor_fps[sensor]
        fp = GetCreateFP(sensor_fpid, "U", idx)
        fp.SetOrientation((sensor_rotation + rotation) * 10.0)
        fp.SetPosition(mkpt(x, 0, offset=FootprintPadCenterMM(fp)))
        fp.Value().SetPosition(mkpt(0,0,center=FootprintPadCenterMM(fp)))
        fp.Value().SetVisible(False)
        fp.Reference().SetPosition(mkpt(0,0,center=FootprintPadCenterMM(fp)))
        fp.Reference().SetVisible(False)
        bb = fp.GetBoundingBox()
        bbleft = bb.GetLeft() / 1000000.0 - center[0]
        bbright = bb.GetRight() / 1000000.0 - center[0]
        if bbleft < left:
            left = bbleft
        if bbright > right:
            right = bbright
        b.Add(fp)
        fp.Reference().SetPosition(mkpt(3,-4.75,center=FootprintPadCenterMM(fp)))
        #fp.Reference().Rotate(pcbnew.wxPoint(*FootprintPadCenterMM(fp)), 90*10)
        fp.Reference().SetVisible(True)

        # connect nets
        pads = { int(p.GetName()): p for p in fp.Pads() }
        if idx==1:
            pads[1].SetNet(nets["POS"])
        else:
            pads[1].SetNet(nets[f"P{idx-1}to{idx}"])
        if idx==sensors:
            pads[2].SetNet(nets["NEG"])
        else:
            pads[2].SetNet(nets[f"P{idx}to{idx+1}"])
        pads[3].SetNet(nets[f"C{idx}"])
        pads[4].SetNet(nets[f"E{idx}"])

    hole_xs = [ -((holecols - 1) * sensorspace)/2.0 + sensorspace * i for i in range(holecols) ]
    for idx, (x,y) in zip(range(1, len(hole_xs)*len(holerows)+1),
                          itertools.product(hole_xs, holerows)):
        fp = GetCreateFP(hole_3mm_fp, "H", idx)
        fp.Reference().SetVisible(False)
        fp.Value().SetVisible(False)
        fp.SetPosition(mkpt(x, y))
        b.Add(fp)

    connfpid, connoffset, tab_height = getconnector_fp(sensors)
    connfp = GetCreateFP(connfpid, "J", 1)
    connfp.SetOrientation(90 * 10)
    connfp.SetPosition(mkpt(0 + connoffset[0], top - 2.54 * 0.75 + connoffset[1], offset=FootprintPadCenterMM(connfp)))
    connfp.Reference().SetVisible(False)
    connfp.Value().SetVisible(False)
    b.Add(connfp)
    pcbnew.Refresh()
    pads = { int(p.GetName()): p for p in connfp.Pads() }
    if sensors==1:
        pads[1].SetNet(nets["POS"])
        pads[3].SetNet(nets["NEG"])
        pads[2].SetNet(nets["C1"])
        pads[4].SetNet(nets["E1"])
    else:
        pads[1].SetNet(nets["POS"])
        pads[sensors*2+2].SetNet(nets["NEG"])
        for i in range(0, sensors):
            pads[2+2*i].SetNet(nets[f"C{i+1}"])
            pads[3+2*i].SetNet(nets[f"E{i+1}"])

    bb = connfp.GetBoundingBox()
    tab_width = (bb.GetRight() - bb.GetLeft()) / 1000000

    if -tab_width/2 < left:
        left = -tab_width / 2
    if tab_width/2 > right:
        right = tab_width / 2

    tp_xs = [ -((testpoints - 1) * sensorspace)/2.0 + sensorspace * i for i in range(testpoints) ]
    tp_xs[0] = left + 1.5
    tp_xs[-1] = right - 1.5
    for idx, x in zip(range(1, testpoints+1), tp_xs):
        fp = GetCreateFP(testpoint_fp, "TP", idx)
        fp.Value().SetVisible(False)
        fp.SetPosition(mkpt(x,top+2 if idx in (1,testpoints) else 0))
        b.Add(fp)

        if idx==1:
            netname = "POS"
        elif idx==testpoints:
            netname = "NEG"
        else:
            netname = f"P{idx-1}to{idx}"
        fp.Pads()[0].SetNet(nets[netname])

    # top left partial
    b.Add(MakeBoardEdge(mkpt(left,  top),
                        mkpt(-tab_width/2, top)))
    # left
    b.Add(MakeBoardEdge(mkpt(left,  top),    mkpt(left,  bottom)))
    # bottom
    b.Add(MakeBoardEdge(mkpt(left,  bottom), mkpt(right,  bottom)))
    # right
    b.Add(MakeBoardEdge(mkpt(right, bottom), mkpt(right, top)))
    # top right partial
    b.Add(MakeBoardEdge(mkpt(right, top),
                        mkpt(tab_width/2, top)))

    # tab top
    b.Add(MakeBoardEdge(mkpt(-tab_width/2, top-tab_height),
                        mkpt(tab_width/2, top-tab_height)))
    # tab left
    b.Add(MakeBoardEdge(mkpt(-tab_width/2, top-tab_height),
                        mkpt(-tab_width/2, top)))
    # tab right
    b.Add(MakeBoardEdge(mkpt(tab_width/2, top-tab_height),
                        mkpt(tab_width/2, top)))

    text = pcbnew.PCB_TEXT(b)
    text.SetText(f"genboard v0.0.0\n{msg}")
    text.SetPosition(mkpt(0.0, bottom + 5.0))
    text.SetLayer(41)
    b.Add(text)

    pcbnew.Refresh()
