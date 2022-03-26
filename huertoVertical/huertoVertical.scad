$fn=200;
altura= 1600;    
innerD= 360;
outerD=400;
howMany=10;

tube(altura, innerD,outerD);
     translate([0,0,10*j])    
translate([0,0,50])
makeHoles(6);


module  makeHoles(howMany){
    for(i=[0 : howMany])
    {
        rotate([i*360/howMany,90,90])
        translate([0,410, 0])
        hole();
//        cylinder(20,r=12, $fn=300);
        }
    }

module hole(){
    rotate([90,0,0])
    cylinder(h=60,d=50,$fn=300);
    }
    
    
module tube(altura, innerD, outerD){
    difference(){
    cylinder(h= altura,r= outerD);
        translate([0,0,-10])
    cylinder(h= altura+12,r= innerD);
        
    }   
}