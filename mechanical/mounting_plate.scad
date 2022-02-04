x=1;

difference() {
    union() {
        minkowski() {
          translate([45, 0, 0])
            cube([25, 3*25.4, 5], center=true);
          cylinder(h=0.1, r=5);
        }
        for(y=[-1:2:1]) {
            translate([x*1.5*25.4, y*1.5*25.4, 0])
              cylinder(h=5, d=8);
        }
    }
    
    for(y=[-1:2:1]) {
        translate([x*1.5*25.4, y*1.5*25.4, 0])
          cylinder(h=20, d=3.5, center=true);
        
        translate([x*55, y*10, 0])
          cylinder(h=20, d=6, center=true);
    }
}