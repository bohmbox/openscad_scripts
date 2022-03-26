$fn=300;
cubesize =105; // size of cube 
offset= 25; // location of one hole 
holesize =4; // size of holes 
difference() { 
cube(cubesize); 
// punch hole at offset 
translate([offset,offset,-1]) 
cylinder(r=holesize,h=cubesize*2); 
// punch hole at center 
translate([cubesize/2,cubesize/2,-1]) 
cylinder(r=holesize,h=cubesize*2); 
} 