xy = 7.5;
width = 9;
length = xy+(2.5+0.2)*2;
sensor_height = 5.6;
sensor_gap = 2;
// left to right, l_hammer_size > r_hammer_size
l_hammer_size = 33.5;
r_hammer_size = 33.3;
l_curvature = l_hammer_size / 2;
r_curvature = r_hammer_size / 2;

curvature_x0 = l_curvature;
curvature_m = (r_curvature - l_curvature) / 3;

module cny70_gap() {
  minkowski() {
    cube([xy, xy, (sensor_height+sensor_gap)*1.5]);  
    cylinder(h=0.1, r=0.2);
  }
}

module multiprotect(x) {
 imax = x-1;
 difference() {
   translate([0, -11.25, 0])
     cube([12.5*imax+xy,
           30,
           (sensor_height + sensor_gap)]);

   for(i=[0:imax]) {
      translate([i*12.5, 0, 0])
        #cny70_gap();
   }
   /*
   translate([0, xy/2, 0])
     for(i=[0:imax]) {
       curvature = curvature_x0 + curvature_m * i;
       translate([12.5*i, 0, curvature+sensor_height+sensor_gap])
         rotate([0, 90, 0])
           cylinder(h=12.5, r=curvature);
     }
   */
   translate([0, xy/2, 0])
     for(y=[-1:2:1]) {
       for(i=[0:(imax-1)]) {
         translate([10+12.5*i, y*-10, 2])
           cylinder(h=30, d=6.5, $fn=19);
         translate([10+12.5*i, y*-10, -2])
           cylinder(h=4, d=4.1, $fn=9);
       }
     }
  /*
  translate([0, -sensor_height/2, sensor_height/2])
    #sphere(r=2);
  */
 }
}

multiprotect(4);