# run with `freecadcmd convert_stl_to_wrl.py` or equivalent in your OS (I believe is freecadcmd.exe in Windows)

import FreeCAD
import Mesh
Mesh.open("./QRE1113-screen.stl")

obj = FreeCAD.getDocument("Unnamed").getObject("QRE1113_screen")
obj.Mesh.write("QRE1113-screen.wrl")
