$fn=100;
pi=3.1416;
altura= 1500;
innerR=365;
outerR=400; 
theta= 30;
x= cos(theta);
y= sin(theta);
z= altura*360/12;
howMany=15;
//echo(howMany);

difference(){
    tube();
    hoyos();
    }
module hoyos(){
//angulos separados por 20 grados
for(i=[0:60:360]){
    rotate([0,0,-90])
    translate([0,0,160])
    translate([outerR*cos(i),outerR*sin(i),5*i])
//    azules
    color([0,0,1])
    sphere(60);
    }

for(i=[0:60:360]){
    translate([0,0,160])
    translate([outerR*sin(i),outerR*cos(i),5*i])
//    verdes
    color([0,1,0])
    sphere(60);
    }

//for(i=[0:60:360]){
//    rotate([0,0,90])
//    translate([0,0,160])
//    translate([outerR*sin(i),outerR*cos(i),3*i])
////    verdes
//    color([0,1,0])
//    sphere(60);
//    }     
}
module tube(){
    difference(){
        color([0,0,0])    
        cylinder(altura,r=outerR); 
        translate([0,0,-10])
        cylinder(altura+20,r=innerR);
            
}
}