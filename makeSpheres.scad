module  makeSpheres(howMany){
    for(i=[0 : howMany])
    {
        rotate(i*360/howMany)
        translate([0,40, 0])
        sphere(r=12, $fn=300);
        }
    }
    
module  makeSpheresrotate(howMany){
    for(i=[0 : howMany])
    {
        rotate(i*360/howMany)
        translate([0,17, 0])
        sphere(r=7, $fn=300);
        }
    }    
    
module  makeSpheresTranslate(howMany){
    for(i=[0 : 10: 200])
    // start:increment:end
    {
//        rotate(i*360/howMany)
        translate([0,20*i, 0])
        sphere(r=i, $fn=300);
        }
    }        
    makeSpheres(6);
//    makeSpheresrotate(5);makeSpheresrotate(5);
//    makeSpheresTranslate(200);    