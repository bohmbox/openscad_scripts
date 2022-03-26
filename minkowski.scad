minkowski(){
    translate([3,3,0])
    cylinder(11, r=1, $fn=400, center=true);
    
    cube([12,12, 10],center=true);
    }