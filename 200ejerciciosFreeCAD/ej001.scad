difference() {
cylinder(5,d=80);

translate([0,28,0])
cylinder(12,d=10, center=true);

translate([-28,0,0])
cylinder(12,d=10, center=true);
    
translate([0,-28,0])
cylinder(12,d=10, center=true);

translate([0,-12,-1])
cube([40,24,13]);  

cylinder(12,d=24, center=true);  
    
}