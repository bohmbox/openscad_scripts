module lado(x,y,z,R){
union(){
hull() {
    translate([R,R,0])
    cylinder(z,r=R);
    
    translate([x+R,R,0]) cylinder(z,r=R);
    translate([R,y+R,0]) cylinder(z,r=R);
    translate([x+R,y+R,0]) cylinder(z,r=R);
}
translate([0,0,0])
cube([x,y+2*R,z]);
}
}


xbase=70;
ybase=90;
zbase=20;
R1=30;
lado(xbase,ybase,zbase,R1);

xlado=10;
ylado=110;
zlado=20;
R2=20;
translate([zlado,0,0])
rotate([0,-90,0])
lado(xlado,ylado,zlado,R=20);

//    rotate([0,-90,0])
//    lado(100,120,20,10);
    
//translate([-30,-30,0])
//    