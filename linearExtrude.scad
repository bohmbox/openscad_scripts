// Example 1
module net(){ 
linear_extrude(height = 1600, twist = 480, slices = 600) {
   difference() {
     offset(r = 10) {
      square(355, center = true);
     }
     offset(r = 7) {
       square(355, center = true);
     }
   }
 }
 }
 
// translate([0,0,0])
// %cylinder(1600,d=450);
 
 
 // para hacer un tubo
 module tube(tube_length, outerD,innerD){
 
 tube_lenght=1600;
 outerD=400;
 innerD=362; 
     
 difference(){
     scale(v=[1.44,1.44])
     cylinder(r=outerD/2,h=tube_lenght, $fn=220);
     
     scale(v=[1.44,1.44])
     translate([0,0,-50])
     cylinder(r=innerD/2,h=tube_lenght+ 60, $fn=120);
     }
 }
 
 translate([0,0,0]){
 %tube();
 net();
 }