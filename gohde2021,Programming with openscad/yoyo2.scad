// yoyo
// usando la operación mirror
$fn=200;
grosor_mitad = 4;
espaciamiento = 0.6;
offset=0.3;
diametro_espacio = 2.5;

color("blue")
yo();

translate([0,0,grosor_mitad - offset])
cylinder(h= espaciamiento + 2*offset,d=diametro_espacio);

translate([0,0,grosor_mitad*2+espaciamiento])
mirror([0,0,1])
color("red")
yo();

// figura principal
module yo(){
cylinder(h= grosor_mitad,r1=7,r2=4);
}
