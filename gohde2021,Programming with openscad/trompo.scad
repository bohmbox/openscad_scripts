$fn = 200;
midR = 7;
midHeigth = 4;
union (){
cylinder(h= midHeigth, r1 =0,  r2 = midR);
translate ([0,0,midHeigth])
cylinder(h=midHeigth, r1 = midR, r2 = 0);
translate([0,0,midR -.5])
cylinder(h = midHeigth /2 + .2, r1 = 1.5, r2= 1.5);
}