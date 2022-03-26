r=1200;
r1=400;
h= 200;
color("blue") cylinder(r=r, h=h);
translate([r1, -r1, h]) cylinder(r=r1, h=h);
line([0, -r, h], [0, -r1, h], thickness=30);
line([r1, 0, h], [r, 0, h], thickness=30);