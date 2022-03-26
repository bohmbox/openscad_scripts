$fn= 200;
bigR = 10;
smallR = 4.5;
difference() {
    union() {
        sphere(bigR);
        
        translate([bigR - smallR + 1.5, bigR - smallR + 2.5, 0])
        sphere(smallR);
        
        translate([-(bigR - smallR + 1), bigR - smallR + 2.5, 0])
        sphere(smallR);
    }
    
    translate ([0,0,30/2])
    cube([30,30,30],center= true);
    translate ([0,0,-33/2])
    cube([30,30,30],center= true);
}