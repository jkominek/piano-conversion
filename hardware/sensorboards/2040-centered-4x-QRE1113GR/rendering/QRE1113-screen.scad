QRE1113Screen();

module QRE1113Screen() { 
$fs=0.1;        // resolution in mm
$fa=1;          // resolution in degrees

thickn = 3;     // thickness of the screen
thickt = 6;     // thickness with tolerance to remove pieces

hole_r = 3.2/2;  // M3 is 3mm normally 0.2mm of clearance
bolt_r = 7/2;    // in most cases is 5.5mm so 7mm should be fine
  
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
        translate([5.7-6.5/2+12.6, 20-4.5/2, -1]) cube([6.5,4.5,6]);
        translate([5.7-6.5/2+12.6*2, 20-4.5/2, -1]) cube([6.5,4.5,6]);
        translate([5.7-6.5/2+12.6*3, 20-4.5/2, -1]) cube([6.5,4.5,6]);
    }
}