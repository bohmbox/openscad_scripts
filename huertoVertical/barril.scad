$fn= 200;
alto = 160;
offset = 2.5;
segmentos = 12;
angulo = 360 / segmentos;

r_int = 40;
r_ext = r_int + offset;

difference(){
    anillo();
    translate([0,0,-1])
    separador();
}
module anillo(){
    
    difference(){
        linear_extrude(alto-1.5)
        circle(r = r_ext);
        translate([0,0,-1])
        linear_extrude(alto)
        circle(r= r_int);
    }
}
module separador(){
    for(i = [0:angulo:360]){
        rotate([0,0,i])
        cube([r_ext,offset,alto]);
    }
}