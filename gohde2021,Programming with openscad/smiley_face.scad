// smiley face pendant calibrator
$fn = 200;
cara = 10;
ojo = 2;
pupila = 1.5;
labio = 5;
pendant_ext = 2;
pendant_int = 1;
H = .7;


union(){
    pupilas();
    translate([0,cara/2,0])
    pendant();
 difference() {
    rostro();
    translate([0,-1.8,0])
    boca();
    ojos();
 }
}

module pendant() {
    difference(){
        cylinder(h=H,d=pendant_ext);
        translate([0,0,-0.1])
        cylinder(h=H+1,d=pendant_int);
    }
}

module boca() {
    difference(){
        translate([0,1,-0.1])
        cylinder(h=H+1,d=labio);
        translate([0,2,-.1])
        cylinder(h=H+1,d=labio);
    }
}

module rostro(){
    cylinder(h=H,d=cara);
}

module ojos(){
    for(i=[-1.5:3:1.5]){
        translate([i,1.5,-0.1])
        cylinder(h=H+1,d=ojo);
    }
}

module pupilas(){
    for(i=[-1.5:3:1.5]){
        translate([i,.5,0])
        cylinder(h=H,d=pupila);
    }
}