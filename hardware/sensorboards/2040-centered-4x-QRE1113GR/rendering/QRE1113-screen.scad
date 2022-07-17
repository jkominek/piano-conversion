QRE1113Screen();

module QRE1113Screen() { 
$fs=0.1;        // resolution in mm
$fa=1;          // resolution in degrees
hole_r = 3.2/2;
thickn = 3;
thickt = 6;
bolt_r = 6/2;   
  
    difference() {
        cube([48.5, 38, 3]);
        translate([11.6,9.5,-1]) cylinder(thickt,hole_r,hole_r);
        translate([11.6+12.4, 9.5,-1]) cylinder(thickt,hole_r,hole_r);
        translate([11.6+12.4+12.6,9.5,-1]) cylinder(thickt,hole_r,hole_r);
        translate([11.6,29.5,-1]) cylinder(thickt,hole_r,hole_r);
        translate([11.6+12.4, 29.5,-1]) cylinder(thickt,hole_r,hole_r);
        translate([11.6+12.4+12.6,29.5,-1]) cylinder(thickt,hole_r,hole_r);
        translate([11.6,9.5,1.5]) cylinder(thickt,bolt_r,bolt_r);
        translate([11.6+12.4, 9.5,1.5]) cylinder(thickt,bolt_r,bolt_r);
        translate([11.6+12.4+12.6,9.5,1.5]) cylinder(thickt,bolt_r,bolt_r);
        translate([11.6,29.5,1.5]) cylinder(thickt,bolt_r,bolt_r);
        translate([11.6+12.4, 29.5,1.5]) cylinder(thickt,bolt_r,bolt_r);
        translate([11.6+12.4+12.6,29.5,1.5]) cylinder(thickt,bolt_r,bolt_r);
        
        translate([5.7-6.5/2, 20-4.5/2, -1]) cube([6.5,4.5,6]);
        translate([5.7-6.5/2+12.6, 20-4.5/2, -1]) cube([6.5,4.5,6]);    translate([5.7-6.5/2+12.6*2, 20-4.5/2, -1]) cube([6.5,4.5,6]);
        translate([5.7-6.5/2+12.6*3, 20-4.5/2, -1]) cube([6.5,4.5,6]);
    }
}