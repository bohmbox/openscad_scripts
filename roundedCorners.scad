include <roundedcube.scad>;
//use(roundedcube.scad);
translate(v = [2.5, -0.5, 5])
color("Green")
roundedcube([3, 2, 2], false, 0.4, "z");

translate(v = [0, 0, 6])
color("Orange")
roundedcube([3, 2, 2], true, 0.2);