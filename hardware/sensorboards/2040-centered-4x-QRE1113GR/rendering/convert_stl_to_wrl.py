# run with `freecadcmd convert_stl_to_wrl.py` or equivalent in your OS (I believe is freecadcmd.exe in Windows)
# the input file is exported from /mechanical/QRE1113-protector.scad

import FreeCAD
import Mesh
Mesh.open("./QRE1113-protector.stl")

mesh = FreeCAD.getDocument("Unnamed").getObject("QRE1113_protector").Mesh.copy()

matrix = App.Matrix()
factor = 1 / 2.54                           # Grrrrrrr: https://github.com/KiCad/kicad-packages3D/issues/405
matrix.scale(factor,factor,factor)
mesh.transform(matrix)

mesh.write("QRE1113-protector.wrl")
