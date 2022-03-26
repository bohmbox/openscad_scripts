// Hole and Pins Test
// Modelo para probar la presición de una impresora 3D

$fn= 200;
alto= 1.5;
ancho = 7;
largo = 15;

D1 = 3;
D2 = 5;
diameter_offset = 0.2;
d1 = D1 - diameter_offset;
d2 = D2 - diameter_offset;

color("green")
holes();
//translate([ancho,0,2*alto])
//rotate([0,180,0])

translate([10,0,0])
pins();

module holes(){
    
    difference() {
        cube([ancho, largo, alto]);
        translate([ancho/2,largo/4,-0.1])
        cylinder(h= alto + 0.3, d= D1);
        translate([ancho/2,2*largo/3,-0.1])
        cylinder(h= alto + 0.3, d= D2);
    }
}

module pins() {
    union() {
        cube([ancho, largo, alto]);
        color("blue")
        translate([ancho/2,largo/4,alto-0.1])
        cylinder(h= alto, d= d1);
        color("blue")
        translate([ancho/2,2*largo/3,alto-0.1])
        cylinder(h= alto, d= d2);
    }
}