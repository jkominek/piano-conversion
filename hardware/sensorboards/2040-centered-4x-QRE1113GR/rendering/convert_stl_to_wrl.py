# run with `freecadcmd convert_stl_to_wrl.py` or equivalent in your OS (I believe is freecadcmd.exe in Windows)

import FreeCAD
import Mesh
Mesh.open("./QRE1113-screen.stl")

mesh = FreeCAD.getDocument("Unnamed").getObject("QRE1113_screen").Mesh.copy()

matrix = App.Matrix()
factor = 1 / 2.54                           # Grrrrrrr: https://github.com/KiCad/kicad-packages3D/issues/405
matrix.scale(factor,factor,factor)
mesh.transform(matrix)

mesh.write("QRE1113-screen.wrl")
