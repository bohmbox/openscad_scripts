$fn=200;

longitud=5; 
d_ext=5;
espesor=.3; //cms

difference()
{
	for(i=[0:3])
	rotate([0,90*i,0])
	cylinder(r=50,h=70);

	for(i=[0:2])
	rotate([0,90*i,0])
	translate([0,0,-1])
	cylinder(r=40,h=72);
}



translate([0,0,d_ext])
borde(d_ext);

tubo(longitud,d_ext,espesor);

translate([-d_ext,0,d_ext])
rotate([0,90,0])
tubo(longitud,d_ext,espesor);

translate([0,-d_ext,d_ext])
rotate([0,90,90])
tubo(longitud,d_ext,espesor);

module tubo(longitud,d_externo,espesor){
    linear_extrude(longitud){
        difference(){
            color("white")
            circle(d_externo);
            color("gray")
            circle(d_externo - espesor);
        }
    }
}
   
module borde(radio){
    intersection(){
        sphere(radio);
        cube(radio);
    }
}

