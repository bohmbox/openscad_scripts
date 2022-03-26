//yo
translate([largo/2-25,ancho + 50, 0])
color("yellow")
cube([50,30,167]);

// dimensiones del tubo
diametro= 2.54;

// dimensiones del armazón
largo= 160; // eje x
ancho= 65; //eje y
alto = 85; //eje z
uptable=60;
// dimensiones de la tabla
tablaX=largo;
offsetX=2.54*2;
tablaY=ancho;
offsetY=2.54*2;
tablaZ=2.54;

// tabla
color("white")
translate([-offsetX/2,-offsetY/2,alto+tablaZ])
cube([tablaX+offsetX,tablaY+offsetY,tablaZ]);

// armazon
//7 tubos verticales (ejeZ)
color("black"){

translate([0,0,0])
cylinder(alto+uptable, d=diametro); //origen


//tubo vertical enmedio
translate([largo/2,0,0])
cylinder(alto + uptable, d=diametro);


translate([largo,0,0])
cylinder(alto+uptable, d=diametro);


translate([0,ancho,0])
cylinder(alto, d=diametro);


// tubo para la lampara, arriba
translate([largo/2,ancho/2,alto + uptable-10])
cylinder(10, d=diametro);


translate([largo,ancho,0])
cylinder(alto, d=diametro);
}
// 4 tubos horizontales (a lo largo:ejeX)
color("black"){
translate([0,0,0])
rotate([0,90,0])
cylinder(largo, d=diametro);
    
translate([0,0,alto + uptable])
rotate([0,90,0])
cylinder(largo, d=diametro);

translate([0,0,alto])
rotate([0,90,0])
cylinder(largo, d=diametro);

//translate([0,ancho,0])
//rotate([0,90,0])
//cylinder(largo, d=diametro);

translate([0,ancho,alto])
rotate([0,90,0])
cylinder(largo, d=diametro);
}

// 6 tubos horizontales (a lo ancho:ejeY)
color("black"){
translate([0,0,0])
rotate([-90,0,0])
cylinder(ancho, d=diametro);

//translate([largo/2,0,0])
//rotate([-90,0,0])
//cylinder(ancho, d=diametro);


// tubo en lo alto
translate([largo/2,0,alto + uptable])
rotate([-90,0,0])
cylinder(ancho/2, d=diametro);

translate([largo,0,0])
rotate([-90,0,0])
cylinder(ancho, d=diametro);

translate([0,0,alto])
rotate([-90,0,0])
cylinder(ancho, d=diametro);

translate([largo/2,0,alto])
rotate([-90,0,0])
cylinder(ancho, d=diametro);

translate([largo,0,alto])
rotate([-90,0,0])
cylinder(ancho, d=diametro);
}

echo("Materiales");
echo("tubo:",6*alto+4*largo+6*ancho);