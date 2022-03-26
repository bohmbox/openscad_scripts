
module line3D(p1,p2,thickness,fn){
    $fn = fn;
    hull(){
        translate(p1)
        sphere(thickness/2);
        translate(p2)
        sphere(thickness/2);
    }
}

//p1=[1,1,1];
//p2=[10,10,10];
thickness =1;
fn = 30;
line3D(p1,p2,thickness,fn);

