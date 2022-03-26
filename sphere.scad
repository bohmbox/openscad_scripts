$fn = 300;

//size1 =[3,4];
//factor = .6;
//size2 =size1*factor;
//size3 =size2*factor;
//size4 =size3*factor;
//
//dist = 25.6;
//progresion = dist*factor;
//translate([dist,0,30])
//square(size1, center=true);
//
//translate([progresion*factor,0,9])
//square(size2, center=true);

//translate([dist*factor,0,0])
//square(size3, center=true);
//
//translate([dist*factor,0,0])
//square(size4, center=true);


//ejeX = 90;
//ejeY = 340;
//ejeZ = 500;
//angulos=[ejeX,ejeY,ejeZ];
//rotate(angulos)
//circle(10);
//
//translate([50,50,40])
//rotate(angulos)
//circle(50);


// Una mesa, o un intento de una con esto poquito que acabo de ver
// unidades en mm

// primero crear un rectagulo del tamaño y levantado


// medidas de la tabla
length = 2000;
width =800;
height = 80;

tableHeight= 1050;
translate([0,0,tableHeight])
linear_extrude(height)
square([length, width]);

// patas de la mesa
largo= 80;
ancho= 80;
alto=750;

// altura del suelo
altura= 1050;


desfase = 20;

difference (){
// Pata1
translate([0,0,0])
color("white")
linear_extrude(altura + height)
square([largo, ancho]);

translate([desfase,desfase,-1])
//color("red")
linear_extrude(altura + height + 2)
square([largo, ancho]);
}

// Pata2
translate([length - largo,0,0])
linear_extrude(altura + height)
square([largo, ancho]);

// Pata3
translate([0,width-largo,0])
linear_extrude(altura + height)
square(largo, ancho);

// Pata4
translate([length-largo,width-largo,0])
linear_extrude(altura + height)
square(largo, ancho);

// un tubo hecho con la diferencia de dos cilindros
difference (){
// cylinder1
cylinder(h=altura*2, r= 120, center= false);
cylinder(h=altura*2, r= 110);
}