$fn = 200;
H = 2;
union() {
    cylinder(h= H, r1 = 5, r2 = 4);
    translate([0,0,H*2 + 1.5])
    sphere(5.5);
}