$fn=20;
lado=30;
angle=30;
R = (lado*(sin(30)+1))/(cos(30));

X = R*cos(2*angle);
Y = R*sin(2*angle);


module linea(lado) {
hull(){
circle(1);

translate([0,lado,0])
circle(1);
}
}



module semi(){
linea(lado);

rotate([0,0,angle])
linea(lado/(2*cos(30)));

translate([0,lado,0])
rotate([0,0,180-angle])
linea(lado/(2*cos(30)));
}

// este es el logo
module semilla(){
semi();
mirror([1,0,0])
semi();
}


//flor();
module flor(){
for(i=[0:2:12]){
rotate([0,0,angle*i])
semilla();
}
}

//hexagono


module celda(){
for(i=[-1:1]){
    for(j=[-3:3]){
rotate(j*[0,0,60])
translate(i*[lado*cos(30),lado*sin(30),0])
linea(lado);
}}
}

flor();
celda();

for(i=[0:10]){
     for(j=[0:10]){
    translate(i*[X,Y,0])
flor();   
translate(j*[R,R,0])
//flor();
celda();
    }
}












