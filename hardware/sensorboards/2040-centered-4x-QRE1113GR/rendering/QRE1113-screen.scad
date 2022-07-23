QRE1113Screen();

// DS in comments below means DataSheet available
// from the manufacturer at
// https://www.onsemi.com/pdf/datasheet/qre1113-d.pdf

module QRE1113Screen() { 
$fs=0.1;         // resolution in mm
$fa=1;           // resolution in degrees

boardx = 49;    // x dimension of the screen
boardy = 38;    // y dimension of the screen

thickn = 3;      // thickness of the screen
thickt = 6;      // thickness with tolerance to remove pieces
thickp = 1;      // thickness of the (groove for the) pins

hole_r = 3.2/2;  // M3 is 3mm normally 0.2mm of clearance
bolt_r = 7/2;    // in most cases is 5.5mm so 7mm should be fine

fbx = 11.85;     // position of the first bolt, x
fby = 10;        // position of the first bolt, y

hxd = 12.6;      // x distance between holes

smx = 3;         // required x clearance for the sensor
                 // 2.5-2.9 according to DS
                 // 2.2 in Davide's sample
smy = 3.7;       // required y clearance for the sensor
                 // 3.2-3.6 according to DS
                 // 3.2 in Davide's sample

stx = 6;         // required total x clearance for the pins
                 // 4.4-4.8 according to DS
                 // 6.5 in Davide's Sparkfun-assembled sample

sty = smy;       // pins are all in X

sbx = 4.1;       // distance x of sensor from board
sby =            // distance y of sensor from board is
      fby +      // distance y of bolt from board PLUS
      20/2 -     // half distance between holes MINUS
      smy/2;     // half of the y size of the sensorhole

pbx =            // distance x of pins from board is
      sbx -      // same as the sensor MINUS (closer)
      (stx - smx) / 2; // difference between sensor and groove

module bolt_hole() cylinder(thickt, hole_r, hole_r);
module bolt_groove() cylinder(thickt, bolt_r, bolt_r);
module sensor_hole() cube([smx, smy, thickt]);
module sensor_groove() cube([stx, sty, thickt]);

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
        translate([pbx,          sby, thickp-thickt])
            sensor_groove();

        translate([sbx + 12.6,   sby, -1])
            sensor_hole();
        translate([pbx + 12.6,   sby, thickp-thickt])
            sensor_groove();

        translate([sbx + 12.6*2, sby, -1])
            sensor_hole();
        translate([pbx + 12.6*2, sby, thickp-thickt])
            sensor_groove();

        translate([sbx + 12.6*3, sby, -1])
            sensor_hole();
        translate([pbx + 12.6*3, sby, thickp-thickt])
            sensor_groove();
    }
}
