// modulo para importar
// todavía no está listo
module huecos(){
z_step = 2;
r= 50;
vueltas= 2;
step = 15;
final = 360/vueltas;

for(i = [0:step:final]){
    translate([r*cos(step*i),r*sin(step*i),z_step*i])
    rotate([23,0,0])
    rotate([0,0,18*i])
    cylinder(h=10,r1=4,r2=0);
    }
}

huecos();