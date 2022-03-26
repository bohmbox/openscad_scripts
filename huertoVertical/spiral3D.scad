use <line3D.scad>;
use <polyline3D.scad>;

r= 20;
h1=8;
h2=5;
fa = 2;
circles = 10;

points1 = [
for(a=[0:fa:360*circles])
[r*cos(a),r*sin(a),h1/(360/fa)*(a/fa)]];

points2 = [
for(a=[0:fa:360*circles])
[r*cos(a),r*sin(a),h2/(360/fa)*(a/fa)]];


intersection(){
polyline3D(points1,1,3);

mirror([0,0,1])
translate([0,0,-50])
polyline3D(points2,1,3);
}