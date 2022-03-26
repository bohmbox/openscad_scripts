//base
baseX=130;
baseY=40;
baseZ=10;

// centros circulos base
cBase1=([0,20,0]);
cBase2=([40,20,0]);

//radios base
rBaseInt=10;
rBaseExt=20;

difference(){
union(){
cube([baseX,baseY,baseZ]);

translate(cBase1)
cylinder(baseZ,r=rBaseExt);
}

hull(){
translate(cBase1)
cylinder(baseZ+10,r=rBaseInt,center=true);

translate(cBase2)
cylinder(baseZ+10,r=rBaseInt);
}
}
//////////////////////////
// posición parte A
A=([130-50,0,0]);

//lado A
AX=50;
AY=10;
AZ=40;

//radiosA
rAint=15;
rAext=25;

// centroA
cA=([130-50/2,5,40]);

difference(){
    union(){
translate(A)
cube([AX,AY,AZ]);

translate(cA)
rotate([90,90,0])
cylinder(baseZ,r=rAext,center=true);
    }

translate(cA)
rotate([90,90,0])
cylinder(baseZ+10,r=rAint,center=true);
}
//////////////////////////
// posición B
B=([130-50,30,0]);

//lado B
BX=50;
BY=10;
BZ=40;

//radios
rBint=15;
rBext=25;

// centroB
cB=([130-50/2,35,40]);
difference(){
    union(){
translate(B)
cube([BX,BY,BZ]);

translate(cB)
rotate([90,90,0])
cylinder(baseZ,r=rBext,center=true);
    }
translate(cB)
rotate([90,90,0])
cylinder(baseZ+10,r=rBint,center=true);
}