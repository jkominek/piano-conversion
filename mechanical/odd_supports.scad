// center to center
support_spacing = 465;
// outer edge to outer edge
// serves as a defined location for making measurements
// stickout and raise are defined at the outer edges
support_spacing_oe2oe = 465 + 10 + 10;

left_raise = 0;
right_raise = 0;
min_raise = min(left_raise, right_raise);
max_raise = max(left_raise, right_raise);
raise_dir = left_raise > right_raise ? -1 : 1;

left_stickout = 5.5;
right_stickout = 13.5;
min_stickout = min(left_stickout, right_stickout);
max_stickout = max(left_stickout, right_stickout);
stickout_dir = left_stickout > right_stickout ? 1 : -1;

module m5_screw_hole(_length) {
    //4040, or 2020 w/washer
    depth_into_extrusion = 5.5;
    //2020 w/o washer
    //depth_into_extrusion = 4.75;
    length = _length - 1;
    translate([0,0,(length-depth_into_extrusion)])
      cylinder(h=(60-(length-depth_into_extrusion)), d=11);
    translate([0,0,-depth_into_extrusion])
      cylinder(h=length, d=5.6);
}

// support structure
module verticals() {
union() {
  // right
  cube([20, 20, 300]);
  // left
  translate([support_spacing, 0, 0])
    cube([20, 20, 300]);
}
}

// beam
module beam() {
translate([10 + support_spacing/2,
           20 + 20 + min_stickout + 0.5*(max_stickout-min_stickout),
           150])
  rotate([0,
          raise_dir*atan2(max_raise-min_raise, support_spacing_oe2oe),
          stickout_dir*atan2(max_stickout-min_stickout, support_spacing_oe2oe)]) {
    cube([support_spacing + 60, 40, 40], center=true);
          }
}

module raw_mount() {
translate([10 + support_spacing/2,
           20 + 20 + min_stickout + 0.5*(max_stickout-min_stickout),
           150])
  rotate([0,
          raise_dir*atan2(max_raise-min_raise, support_spacing_oe2oe),
          stickout_dir*atan2(max_stickout-min_stickout, support_spacing_oe2oe)])
    translate([0,-20,20])
    rotate([0,90,0])
    linear_extrude(height=support_spacing+60, center=true)
      polygon(points=[[-25,-(max_stickout+30)],
                      [-25, 0],
                      [-20,40],
                      [35,40],
                      [35,-(max_stickout+30)]]);
}


module mount() {
    difference() {
        raw_mount();
        minkowski() {
          beam();
          cube([0.3,0.3,0.3]);
        }
        minkowski() {
          verticals();
          cube([0.3,0.3,0.3]);
        }
        translate([0,-100,0])
          cube([support_spacing+80, 100, 300]);
        translate([-100,-150,0])
          cube([100+0.5, 300, 300]);
        translate([support_spacing+20-0.5,-150,0])
          cube([100, 300, 300]);
        translate([35, -10, 0])
          cube([support_spacing - 50, 300, 300]);
     
        translate([20, 10, 150+right_raise-5])   
          rotate([0,90,0])
            m5_screw_hole(20);
        translate([20, 10, 150+right_raise+35])   
          rotate([0,90,0])
            m5_screw_hole(20);

        translate([support_spacing, 10, 150+left_raise-5])   
          rotate([0,-90,0])
            m5_screw_hole(20);
        translate([support_spacing, 10, 150+left_raise+35])   
          rotate([0,-90,0])
            m5_screw_hole(20);

translate([10 + support_spacing/2,
           20 + 20 + min_stickout + 0.5*(max_stickout-min_stickout),
           150])
  rotate([0,
          raise_dir*atan2(max_raise-min_raise, support_spacing_oe2oe),
          stickout_dir*atan2(max_stickout-min_stickout, support_spacing_oe2oe)]) {
             translate([0, -20, 20]) rotate([0,90,0])
               cylinder(h=support_spacing+60, r=0.8, center=true, $fn=9);

              translate([-(support_spacing/2)-1, 10, 20])
                m5_screw_hole(20);
              translate([(support_spacing/2)+1, 10, 20])
                m5_screw_hole(20);
              
              translate([-(support_spacing/2)+15, 10, 20])
                m5_screw_hole(20);
              translate([(support_spacing/2)-15, 10, 20])
                m5_screw_hole(20);

              translate([-(support_spacing/2)+7.5, -10, 20])
                m5_screw_hole(20);
              translate([(support_spacing/2)-6.5, -10, 20])
                m5_screw_hole(20);

              // !!!! the -16 and +19 here are fairly hand tweaked
              // and may not survive adjustments
              translate([(support_spacing/2)-17.5, -20, 10])
                rotate([90,0,0])
                  m5_screw_hole(20);
              translate([-(support_spacing/2)+19, -20, 10])
                rotate([90,0,0])
                  m5_screw_hole(20);
          }

    }
}

module right_mount() {
  intersection() {
    mount();
    translate([0,0,75+right_raise])
      cube([150, 150, 150]);
  }
}

module left_mount() {
  intersection() {
    mount();
    translate([support_spacing-75,0,75+left_raise])
      cube([150, 150, 150]);
  }
}

translate([-10, 0, 0]) {
color("orangered") verticals();
beam();
//left_mount();
//right_mount();
color("dodgerblue") mount();
}
