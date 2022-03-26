use <line3D.scad>;
//p1=[1,1,1];
//p2=[10,10,10];
thickness =.6;
fn = 60;
//line3D(p1,p2,thickness,fn);

module polyline3D(points,thickness,fn){
    module polyline3D_inner(points,index){
        if(index<len(points)){
            line3D(points[index-1],points[index],thickness,fn);
        polyline3D_inner(points,index+1);
        }
    }
    polyline3D_inner(points,1);
}


//vector de vectores
points = [[0,0,0],
[10,0,.2],
[5,10,.4],
[1,1.2,.6],
[8,1.2,.8],
[5,7.4,1],
[2.8,2.5,1.2],
[6,2.5,1.4],
[5,5,1.6],
[4,3,1.8],
         ];

color("green")
polyline3D(points, thickness,fn);

