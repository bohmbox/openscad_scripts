mirror([115,155,0])
translate([115,155,0])
%circle(120);

mirror([90,0,0])
translate([115,155,0])
%circle(120);

mirror([0,90,0])
translate([115,155,0])
%circle(120);

translate([115,155,0])
%circle(120);


canvas();
//module previous to gluing everything
module canvas(){

translate([150,0,0])
ring_small(20,25,15);

mirror([150,0,0])
translate([150,0,0])
ring_small(20,25,15);

ring_big();
}

//  module implemented with rotational extrusion
module ring_small(height, radius, radial_width) {
    difference(){
  rotate_extrude()
    translate([radius, 0, 0])
      square([radial_width, height]);
    
        translate([radius-2.1, -10, -.1])
        linear_extrude(20.2)
        square([20,20]);
        }
}

// module for nested ring structure
module ring_big(){
difference(){
// El objeto original al que vamos a extruir lo de adentro
linear_extrude(20)
circle(r=75);

// extrusión 1, circulo superior de r=135.6/2 mm
translate([0,0,10])
linear_extrude(10.1)
circle(r=135.6/2);

// extrusión 2, circulo superior de r=50 mm
translate([0,0,-.1])
linear_extrude(10.5)
circle(r=50);
}
}