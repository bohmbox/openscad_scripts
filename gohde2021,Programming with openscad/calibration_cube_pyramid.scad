// calibration cube-pyramid

lado = 10;
for(k=[0:1:2]){
    for(j=[0:1:2-k]){
        for(i=[0:1: 2-k-j]){
            translate (lado*[i,j,k])
            cube(lado*[1,1,1]);
        }
    }
}