QRE1113Screen();

module QRE1113Screen() { 
$fs=0.1;         // resolution in mm
$fa=1;           // resolution in degrees

thickn = 3;      // thickness of the screen
thickt = 6;      // thickness with tolerance to remove pieces

hole_r = 3.2/2;  // M3 is 3mm normally 0.2mm of clearance
bolt_r = 7/2;    // in most cases is 5.5mm so 7mm should be fine

fbx = 11.6;      // position of the first bolt, x
fby = 9.5;       // position of the first bolt, y

hxd = 12.6;      // x distance between holes

module bolt_hole() cylinder(thickt, hole_r, hole_r);
module bolt_groove() cylinder(thickt, bolt_r, bolt_r);

    difference() {
        cube([48.5, 38, 3]);
        translate([fbx, fby, -1])
            bolt_hole();
        translate([fbx, fby, thickn/2])
            bolt_groove();

        translate([fbx + hxd, fby, -1])
            bolt_hole();
        translate([fbx + hxd, fby, thickn/2])
            bolt_groove();

        translate([fbx + 2*hxd, fby, -1])
            bolt_hole();
        translate([fbx + 2*hxd, fby, thickn/2])
            bolt_groove();

        translate([fbx, 20 + fby, -1])
            bolt_hole();
        translate([fbx, 20 + fby, thickn/2])
            bolt_groove();

        translate([fbx + hxd, 20 + fby, -1])
            bolt_hole();
        translate([fbx + hxd, 20 + fby, thickn/2])
            bolt_groove();

        translate([fbx + 2*hxd, 20 + fby, -1])
            bolt_hole();
        translate([fbx + 2*hxd, 20 + fby, thickn/2])
            bolt_groove();

        translate([5.7-6.5/2, 20-4.5/2, -1]) cube([6.5,4.5,6]);
        translate([5.7-6.5/2+12.6, 20-4.5/2, -1]) cube([6.5,4.5,6]);
        translate([5.7-6.5/2+12.6*2, 20-4.5/2, -1]) cube([6.5,4.5,6]);
        translate([5.7-6.5/2+12.6*3, 20-4.5/2, -1]) cube([6.5,4.5,6]);
    }
}