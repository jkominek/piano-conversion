QRE1113Screen();

module QRE1113Screen() { 
$fs=0.1;         // resolution in mm
$fa=1;           // resolution in degrees

boardx = 49;    // x dimension of the screen
boardy = 38;    // y dimension of the screen

thickn = 3;      // thickness of the screen
thickt = 6;      // thickness with tolerance to remove pieces

hole_r = 3.2/2;  // M3 is 3mm normally 0.2mm of clearance
bolt_r = 7/2;    // in most cases is 5.5mm so 7mm should be fine

fbx = 11.85;     // position of the first bolt, x
fby = 10;        // position of the first bolt, y

hxd = 12.6;      // x distance between holes

smx = 3;         // required x clearance for the sensor
smy = 3.7;       // required y clearance for the sensor

stx = 6.5;       // required total x clearance for the pins
sty = 4.5; // this should be equal to smy!!!

sbx = 4.1;       // distance x of sensor from board
sby =            // distance y of sensor from board is
      fby +      // distance y of bolt from board PLUS
      20/2 -     // half distance between holes MINUS
      smy/2;     // half of the y size of the sensorhole

module bolt_hole() cylinder(thickt, hole_r, hole_r);
module bolt_groove() cylinder(thickt, bolt_r, bolt_r);
module sensor_hole() cube([smx, smy, thickt]);

    difference() {
        cube([boardx, boardy, 3]);
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

        translate([sbx,          sby, -1])
            sensor_hole();
        translate([sbx + 12.6,   sby, -1])
            sensor_hole();
        translate([sbx + 12.6*2, sby, -1])
            sensor_hole();
        translate([sbx + 12.6*3, sby, -1])
            sensor_hole();
    }
}
