--
$fn=200;
// incluí una función externa para redondear los bordes. 
include<../roundedcube.scad>;
union(){
base();
lado();
}
module base(){
difference(){
//cubo base
roundedcube([100,120, 20],false,10,"z");

translate([70-15,30,-5])
cube([30,60, 30]);

translate([70,30,-5])
cylinder(30,r=15);

translate([70,90,-5])
cylinder(30,r=15);
}
}

module lado(){
difference(){
// cubo del lado
roundedcube([20,120, 50],false,10,"x");
//cube([20,120, 50]);

//cilindro1 Lado
translate([-0.5,20,30])
rotate([0,90,0])
cylinder(30,r=6);

// cilindro2 Lado
translate([-.5,100,30])
rotate([0,90,0])
cylinder(30,r=6);

translate([-10,20,36])
rotate([0,90,0])
//width, depth, height
cube([12,80,40]);
}
}