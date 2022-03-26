//puntos
p0 = [0, 0];
p1 = [0, 30];
p2 = [30, 30];
p3 = [30, 20];
p4 = [35, 20];
p5 = [35, 0];
p6 = [25, 0];
p7 = [10,10];
p8 = [10,0];
points = [p0, p1, p2, p3,p4, p5,p6,p7,p8];


linear_extrude(10){
    union(){
    polygon(points);

    translate([70,0,0])
    mirror(){
    polygon(points);
    }
}
}