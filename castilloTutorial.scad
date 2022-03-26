// Un castillo en Openscad,
// Tutorial de youtube. 
// https://www.youtube.com/watch?v=uYVDYicKUbM
// 31jul2021

// suelo
cube([50,50,0.5]);

// pared norte
cube([50,1,20]);

// pared sur
translate([0,50,0])
cube([50,1,20]);

// pared este
rotate([0,0,90])
cube([50,1,20]);

difference () {
// pared oeste
translate([50,0,0])
rotate([0,0,90])
cube([50,1,20]);

// puerta oeste
translate([45,25,0])
rotate([0,90,0])
cylinder(r=10, h= 30, $fn=200);
 
    // ventana 1 oeste   
translate([47,10,10])
cube(5,5,5);
   
    // ventana 2 oeste   
translate([47,35,10])
cube(5,5,5);    
}

// torres de castillo
//torre norEste
cylinder(r=5, h=20,$fn=200);
    //tejado norEste
translate([0,0,20])
cylinder(h=10,r1=6,r2=0, $fn=200);
    // bandera norEste
translate([0,0,10])
cylinder(r=0.3, h=30,$fn=200);
translate([0,0,35])
cube([0.3,10,5]);

//torre norOeste
translate([50,0,0])
cylinder(r=5, h=20,$fn=200);
    //tejado norOeste
translate([50,0,20])
cylinder(h=10,r1=6,r2=0, $fn=200);
    // bandera norOeste
translate([50,0,10])
cylinder(r=0.3, h=30,$fn=200);
translate([50,0,35])
cube([0.3,10,5]);

//torre surEste
translate([0,50,0])
cylinder(r=5, h=20,$fn=200);
    //tejado surEste
translate([0,50,20])
cylinder(h=10,r1=6,r2=0, $fn=200);
    // bandera surEste
translate([0,50,10])
cylinder(r=0.3, h=30,$fn=200);
translate([0,50,35])
cube([0.3,10,5]);

//torre surOeste
translate([50,50,0])
cylinder(r=5, h=20,$fn=200);
    //tejado surOeste
translate([50,50,20])
cylinder(h=10,r1=6,r2=0, $fn=200);
    // bandera surOeste
translate([50,50,10])
cylinder(r=0.3, h=30,$fn=200);
translate([50,50,35])
cube([0.3,10,5]);


// torre central
difference () {
translate([25,25,0])
cylinder(r=10,h=30,$fn=200);

    //ventana central
translate([22.5,0,20])
cube([5,50,5]);
}    
    //tejado central
translate([25,25,30])
cylinder(h=16,r1=12,r2=0, $fn=200);

    // bandera central
translate([25,25,30])
cylinder(r=0.3, h=30,$fn=200);

translate([25,25,55])
cube([0.3,10,5]);