tablaLargo= 1200;
tablaAncho=800;
tablaAlto= 25.4;


rotate([90,0,0])
cube([tablaLargo,tablaAncho,tablaAlto]);

translate([0,1200,0])
rotate([90,0,0])
cube([tablaLargo,tablaAncho,tablaAlto]);

translate([1200 -(tablaAlto),0,0])
rotate([90,0,90])
cube([tablaLargo,tablaAncho,tablaAlto]);

translate([0,0,0])
rotate([90,0,90])
cube([tablaLargo,tablaAncho,tablaAlto]);

translate([0,0,0])
rotate([0,0,0])
cube([tablaLargo,tablaLargo,tablaAlto]);