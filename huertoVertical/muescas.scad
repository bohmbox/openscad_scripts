r_main = 10;
module main_cylinder() {
    difference() {
        hull() {
            cylinder(h=60,r1=10,r2=10);
            translate([r_main,0,30])
            cylinder(h=10,r1=1,r2=0);
        }   
    }
}

//cylinder(h=61,r1=7.5,r2=7.5);
//main_cylinder();


module main_with_hole() {
    difference() {
        main_cylinder(); //bloque con hull
        translate([r_main,0,30])
        cylinder(h=10,r1=0.7,r2=0);
     
    }
}

main_with_hole();