difference() {
  union() {
    cube([47, 50, 10]);
    translate([15, 0, -2]) {
      cube([10, 50, 2]);
    }
  }
  translate([20,10,-2.1]) {
    cylinder(h=14, d=5.15, $fn=32);
  }
  translate([20,40,-2.1]) {
    cylinder(h=14, d=5.15, $fn=32);
  }
}
