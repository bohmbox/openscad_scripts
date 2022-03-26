// la base
cube([60,100,20]);

// la pared vertical y un trozo de hoyo
difference(){
    cube([20,100,45]);
    
    translate([-1,50,45])
    rotate([0,90,0])
    cylinder(22,d=40);
}
difference(){
    translate([0,50,45])
    rotate([0,90,0])
    cylinder(20,d=50);
   
    translate([-1,50,45])
    rotate([0,90,0])
    cylinder(22,d=40);
}   