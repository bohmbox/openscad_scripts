
H= 10;
R = 15;
union() {
    cylinder(h=H,r1 = R, r2 = 0);
    translate([0,0,H/2-3])
    cylinder(h=H,r1 = 0, r2 = R);
}