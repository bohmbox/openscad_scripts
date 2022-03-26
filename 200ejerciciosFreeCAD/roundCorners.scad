$fn= 200;

linear_extrude(12) 
base();

//difference(){
//    base();
//    }
    
//union(){
//base();
manija();
//}
    
module base(){
    square(64,12,30);
    }
    
module manija(){
    translate([64,13,0])
    cube([70,40,12]);
    }