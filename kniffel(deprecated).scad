letterSize = 6.1; //6.1...6.6, Punktsdurchmessser 1.5...1.6
letterHeight = 0.5;
letterDistance=6;

resolution = 18;
secondLine = 70;
diameterEdge = 10;

lineWidth=1;
width = 140;
height = 17*(letterSize+letterDistance)-2*letterDistance-diameterEdge;
gap=0.5;

abacusWidth = letterSize*1;
abacusDepth = letterHeight*4;
abacusHeight = letterSize*1;


//translate([0,0,letterHeight*2])
//difference() {
//    resize([abacusWidth-letterHeight,abacusWidth-letterHeight,letterHeight*2])
//sphere(d=1, $fn=resolution*2);
//    translate([0,0,-letterHeight])
//    cube([abacusWidth-letterHeight,abacusWidth-letterHeight,letterHeight*2], center=true);
//}

//difference() {
//    union() {
////        hull() {
//        translate([0,0,letterHeight*2.75])
//        hull() {
//            translate([abacusHeight*1/2-letterHeight*5, abacusWidth*1/2-letterHeight*3,0]) cylinder(d=letterHeight*9, h=letterHeight*1.5, center=true, $fn=resolution*3);
//            translate([abacusHeight*1/2-letterHeight*5, -abacusWidth*1/2+letterHeight*3,0]) cylinder(d=letterHeight*9, h=letterHeight*1.5, center=true, $fn=resolution*3);
//            translate([-abacusHeight*1/2+letterHeight*5, abacusWidth*1/2-letterHeight*3,0]) cylinder(d=letterHeight*9, h=letterHeight*1.5, center=true, $fn=resolution*3);
//            translate([-abacusHeight*1/2+letterHeight*5, -abacusWidth*1/2+letterHeight*3,0]) cylinder(d=letterHeight*9, h=letterHeight*1.5, center=true, $fn=resolution*3);
//        }
//        
////        translate([abacusHeight*0-letterHeight*0, abacusWidth*0,letterHeight*4]) cylinder (d=letterHeight*8,h=letterHeight, $fn=resolution, cneter=true);
////    }
////        translate([0,0,letterHeight*3.5])
////        scale([1, 1,0.3])
////        hull() {
////            translate([abacusHeight*1/2-letterHeight*5, abacusWidth*1/2-letterHeight*3,0]) sphere(d=letterHeight*9, $fn=resolution*3);
////            translate([abacusHeight*1/2-letterHeight*5, -abacusWidth*1/2+letterHeight*3,0]) sphere(d=letterHeight*9, $fn=resolution*3);
////            translate([-abacusHeight*1/2+letterHeight*5, abacusWidth*1/2-letterHeight*3,0]) sphere(d=letterHeight*9, $fn=resolution*3);
////            translate([-abacusHeight*1/2+letterHeight*5, -abacusWidth*1/2+letterHeight*3,0]) sphere(d=letterHeight*9, $fn=resolution*3);
////        }
//        difference() {
//            block(abacusHeight*1, abacusWidth*1);
//            translate([0,0,-letterHeight*2])
//            cube([abacusHeight*1, abacusWidth*1, letterHeight*4], center=true);
//        }
//        translate([-letterHeight*1.5,0,0])
//        cube([letterHeight*3-gap/2, letterHeight*6-gap/2, letterHeight*6], center=true);
//    }
//    translate([letterHeight*1.5,0,0])
//    cube([letterHeight*3, letterHeight*6, letterHeight*6], center=true);
//}

//difference() {
//    union() {
//        hull() {
//        translate([0,0,letterHeight*2.75])
//        hull() {
//            translate([abacusHeight*1/2-letterHeight*5, abacusWidth*1/2-letterHeight*3,0]) cylinder(d=letterHeight*9, h=letterHeight*0.5, center=true, $fn=resolution*3);
//            translate([abacusHeight*1/2-letterHeight*5, -abacusWidth*1/2+letterHeight*3,0]) cylinder(d=letterHeight*9, h=letterHeight*0.5, center=true, $fn=resolution*3);
//            translate([-abacusHeight*1/2+letterHeight*5, abacusWidth*1/2-letterHeight*3,0]) cylinder(d=letterHeight*9, h=letterHeight*0.5, center=true, $fn=resolution*3);
//            translate([-abacusHeight*1/2+letterHeight*5, -abacusWidth*1/2+letterHeight*3,0]) cylinder(d=letterHeight*9, h=letterHeight*0.5, center=true, $fn=resolution*3);
//        }
//        translate([abacusHeight*0-letterHeight*0, abacusWidth*0.2,letterHeight*4]) sphere (d=letterHeight*4, $fn=resolution*2, cneter=true);
//        translate([abacusHeight*0-letterHeight*0, -abacusWidth*0.2,letterHeight*4]) sphere (d=letterHeight*4, $fn=resolution*2, cneter=true);
//    }
////        translate([0,0,letterHeight*3.5])
////        scale([1, 1,0.3])
////        hull() {
////            translate([abacusHeight*1/2-letterHeight*5, abacusWidth*1/2-letterHeight*3,0]) sphere(d=letterHeight*9, $fn=resolution*3);
////            translate([abacusHeight*1/2-letterHeight*5, -abacusWidth*1/2+letterHeight*3,0]) sphere(d=letterHeight*9, $fn=resolution*3);
////            translate([-abacusHeight*1/2+letterHeight*5, abacusWidth*1/2-letterHeight*3,0]) sphere(d=letterHeight*9, $fn=resolution*3);
////            translate([-abacusHeight*1/2+letterHeight*5, -abacusWidth*1/2+letterHeight*3,0]) sphere(d=letterHeight*9, $fn=resolution*3);
////        }
////        difference() {
////            block(abacusHeight*1, abacusWidth*1);
////            translate([0,0,-letterHeight*2])
////            cube([abacusHeight*1, abacusWidth*1, letterHeight*4], center=true);
////        }
////        translate([-letterHeight*1.5,0,0])
////        cube([letterHeight*3-gap/2, letterHeight*6-gap/2, letterHeight*6], center=true);
//    }
////    translate([letterHeight*1.5,0,0])
////    cube([letterHeight*3, letterHeight*6, letterHeight*6], center=true);
//}

//  "Text"              Disc 1 (Multiplier) Disc 2(Number)
// cards for text, holder for cards, coins (divide upper/lower part), coins 1(round),10 (10edge),50 (5edge)
// rechenschieber (2 zeilen)
$strings = [
    "Einer",            // 1                -, 1, 2, 3, 4, 5
    "Zweier",           // 2                -, 1, 2, 3, 4, 5             
    "Dreier",           // 3                -, 1, 2, 3, 4, 5
    "Vierer",           // 4                -, 1, 2, 3, 4, 5
    "Fünfer",           // 5                -, 1, 2, 3, 4, 5
    "Sechser",          // 6                -, 1, 2, 3, 4, 5
    //"",
    "Bonus",            // 1                -,35
    //"",
    "Paar",
    "Zwei Paare", //
    "DreierPasch",      // 3, 4, 5          -, 1, 2, 3, 4, 5
    "ViererPasch",      // 4, 5             -, 1, 2, 3, 4, 5
    "Chance",           // Problem: Beliebige Zahl... 5 Würfel nehmen??
    //"",
    "Full House",       // 1                -,25
    "Kleine Straße",    // 1                -,30
    "Große Straße",     // 1                -,40
    "Kniffel",          // 1                -,50
    ];
    
$counter= [
    "1er",       // 1                -, 1, 2, 3, 4, 5
    "2er",        // 2                -, 1, 2, 3, 4, 5             
    "3er",        // 3                -, 1, 2, 3, 4, 5
    "4er",        // 4                -, 1, 2, 3, 4, 5
    "5er",        // 5                -, 1, 2, 3, 4, 5
    "6er",        // 6                -, 1, 2, 3, 4, 5
    //"",
    "35",               //
    //"",
    "Alle",
    "Alle",       //
    "Alle",      // 3, 4, 5          -, 1, 2, 3, 4, 5
    "Alle",      // 4, 5             -, 1, 2, 3, 4, 5
    "Alle",           // Problem: Beliebige Zahl... 5 Würfel nehmen??
    //"",
    "25",       // 1                -,25
    "30",    // 1                -,30
    "40",     // 1                -,40
    "50",          // 1                -,50
    
    ];

difference() {
    union() {
        difference() {
            translate([0,-50,-letterHeight]) basePlate();
            translate([0,3,-letterHeight]) counterBox() ;
            translate([0,0,-letterHeight]) checkBox();
        }
    }   
    brailleText();
    blackText();
    translate([0,-50,letterHeight/2]) grid();
}
    
module basePlate() {
    color("Orange",1.0) {
        hull() {
            translate([height/2,width/2,-letterHeight*1]) 
            cylinder(d=diameterEdge,h=letterHeight*4, $fn=resolution, center=true);
            translate([-height/2,width/2,-letterHeight*1])
            cylinder(d=diameterEdge,h=letterHeight*4, $fn=resolution, center=true);
            translate([height/2,-width/2,-letterHeight*1])
            cylinder(d=diameterEdge,h=letterHeight*4, $fn=resolution, center=true);
            translate([-height/2,-width/2,-letterHeight*1])
            cylinder(d=diameterEdge,h=letterHeight*4, $fn=resolution, center=true);
        }
    }
}

module counterBox() {
    difference() {
        union() {
            translate([-4.7*(letterSize+letterDistance),abacusWidth*0-120,-letterHeight*1]) holes(abacusHeight*12, abacusWidth*1);
            translate([-4.7*(letterSize+letterDistance),abacusWidth*2-120,-letterHeight*1]) holes(abacusHeight*12, abacusWidth*1);
            translate([-4.7*(letterSize+letterDistance),abacusWidth*4-120,-letterHeight*1]) holes(abacusHeight*12, abacusWidth*1);
        
            translate([4.7*(letterSize+letterDistance),abacusWidth*0-120,-letterHeight*1]) holes(abacusHeight*12, abacusWidth*1);
            translate([4.7*(letterSize+letterDistance),abacusWidth*2-120,-letterHeight*1]) holes(abacusHeight*12, abacusWidth*1);
            translate([4.7*(letterSize+letterDistance),abacusWidth*4-120,-letterHeight*1]) holes(abacusHeight*12, abacusWidth*1);
        }
//        for (i=[0:8]) {
//            translate([-2*(letterSize+letterDistance)-abacusHeight*1.1*i,abacusWidth*0-120,-letterHeight*1]) block(abacusHeight*1, abacusWidth*1);
//            translate([-2*(letterSize+letterDistance)-abacusHeight*1.1*i,abacusWidth*2-120,-letterHeight*1]) block(abacusHeight*1, abacusWidth*1);
//            translate([-2*(letterSize+letterDistance)-abacusHeight*1.1*i,abacusWidth*4-120,-letterHeight*1]) block(abacusHeight*1, abacusWidth*1);
//        
//            translate([2*(letterSize+letterDistance)+abacusHeight*1.1*i,abacusWidth*0-120,-letterHeight*1]) block(abacusHeight*1, abacusWidth*1);
//            translate([2*(letterSize+letterDistance)+abacusHeight*1.1*i,abacusWidth*2-120,-letterHeight*1]) block(abacusHeight*1, abacusWidth*1);
//            translate([2*(letterSize+letterDistance)+abacusHeight*1.1*i,abacusWidth*4-120,-letterHeight*1]) block(abacusHeight*1, abacusWidth*1);
//        }
    }
}
    
module checkBox() {
    difference() {
        translate([7*(letterSize+letterDistance)+letterDistance/2-letterSize/2,0,-letterHeight*1])
        for (i=[0:15]) {
            translate([letterDistance/2+letterSize/2,0,0])
            translate([-i*(letterSize+letterDistance),12,0]) holes(abacusHeight, abacusWidth*2);
        }
//        translate([7*(letterSize+letterDistance)+letterDistance/2-letterSize/2,0,-letterHeight*1])
//        for (i=[0:15]) {
//            translate([letterDistance/2+letterSize/2,0,0])
//            translate([-i*(letterSize+letterDistance),12,0]) block(abacusHeight, abacusWidth*1);
//        }
    }
}
    
module brailleText() {
    translate([8*(letterSize+letterDistance)-letterDistance/2-letterSize*0.7,0,0])
    color("Black",1.0) {
        for (i=[0:18]) {
            translate([-i*(letterSize+letterDistance),0,0])//-letterHeight])
            linear_extrude(height = letterHeight) {
                rotate([0,0,-90])
                text(text=$strings[i], font="Braille deutsch", size=letterSize-1.1, halign="left", valign=  "center", $fn=resolution);
            }
        }
    }
}

module blackText() {
    translate([8*(letterSize+letterDistance)-letterDistance/2-letterSize/2,0,0])
    color("Black",1.0) {
        for (i=[0:15]) {
            translate([-i*(letterSize+letterDistance),0,0])
            linear_extrude(height = letterHeight*1) {
                rotate([0,0,-90])
                text(text=$strings[i], font="Helvetica Neue:Normal", size=letterSize, halign="left", valign="center", $fn=resolution);
            }
            translate([-i*(letterSize+letterDistance),-secondLine,0])
            linear_extrude(height = letterHeight*1) {
                rotate([0,0,-90])
                text(text=$counter[i], font="Helvetica Neue:Normal", size=letterSize, halign="center", valign="center", $fn=resolution);
            }
        }
    }
}
    
module grid() {
    color("Black",1.0) {
        union() {
            translate([0,-34,0])
            cube([height+diameterEdge,lineWidth,letterHeight*1], center=true);
    
            translate([2*(letterSize+letterDistance),20,0])
            cube([lineWidth,(width+diameterEdge)/2+34,letterHeight*1], center=true);
            
            translate([1*(letterSize+letterDistance),0,0])
            cube([lineWidth,width+diameterEdge,letterHeight*1], center=true);
            
            translate([-4*(letterSize+letterDistance),20,0])
            cube([lineWidth,(width+diameterEdge)/2+34,letterHeight*1], center=true);
            
            difference() {
                hull() {
                    translate([height/2,width/2,0]) 
                    cylinder(d=diameterEdge,h=letterHeight*1, $fn=resolution, center=true);
                    translate([-height/2,width/2,0])
                    cylinder(d=diameterEdge,h=letterHeight*1, $fn=resolution, center=true);
                    translate([height/2,-width/2,0])
                    cylinder(d=diameterEdge,h=letterHeight*1, $fn=resolution, center=true);
                    translate([-height/2,-width/2,0])
                    cylinder(d=diameterEdge,h=letterHeight*1, $fn=resolution, center=true);
                }
                hull() {
                    translate([height/2-lineWidth,width/2-lineWidth,0]) 
                    cylinder(d=diameterEdge,h=letterHeight*4, $fn=resolution, center=true);
                    translate([-height/2+lineWidth,width/2-lineWidth,0])
                    cylinder(d=diameterEdge,h=letterHeight*4, $fn=resolution, center=true);
                    translate([height/2-lineWidth,-width/2+lineWidth,0])
                    cylinder(d=diameterEdge,h=letterHeight*4, $fn=resolution, center=true);
                    translate([-height/2+lineWidth,-width/2+lineWidth,0])
                    cylinder(d=diameterEdge,h=letterHeight*4, $fn=resolution, center=true);
                }
            }
        }
    }
}

        

module holes(height, length) {
    difference() {
        hull() {
            translate([+(height-1*abacusDepth)/2,+(length-1*abacusDepth)/2,0]) cylinder(d=abacusDepth, h=letterHeight*6, center=true, $fn=resolution);
            translate([+(height-1*abacusDepth)/2,-(length-1*abacusDepth)/2,0]) cylinder(d=abacusDepth, h=letterHeight*6, center=true, $fn=resolution);
            translate([-(height-1*abacusDepth)/2,+(length-1*abacusDepth)/2,0]) cylinder(d=abacusDepth, h=letterHeight*6, center=true, $fn=resolution);
            translate([-(height-1*abacusDepth)/2,-(length-1*abacusDepth)/2,0]) cylinder(d=abacusDepth, h=letterHeight*6, center=true, $fn=resolution);
        }
        translate([0,+(length-0*abacusDepth)/2,0]) rotate([0,90,0]) cylinder(d= letterHeight*4,h=height, center=true,$fn=4);
        translate([0,-(length-0*abacusDepth)/2,0]) rotate([0,90,0]) cylinder(d= letterHeight*4,h=height, center=true,$fn=4);
        
        translate([+(height-0*abacusDepth)/2,0,0]) rotate([0,90,90]) cylinder(d= letterHeight*4,h=length, center=true,$fn=4);
        translate([-(height-0*abacusDepth)/2,0,0]) rotate([0,90,90]) cylinder(d= letterHeight*4,h=length, center=true,$fn=4);

    }
}

module block(height, length) {
    color("Orange",1.0) {
        difference() {
            hull() {
                translate([+(height-1*abacusDepth-gap)/2,+(length-1*abacusDepth-gap)/2,0]) cylinder(d=abacusDepth, h=letterHeight*4, center=true, $fn=resolution);
                translate([+(height-1*abacusDepth-gap)/2,-(length-1*abacusDepth-gap)/2,0]) cylinder(d=abacusDepth, h=letterHeight*4, center=true, $fn=resolution);
                translate([-(height-1*abacusDepth-gap)/2,+(length-1*abacusDepth-gap)/2,0]) cylinder(d=abacusDepth, h=letterHeight*4, center=true, $fn=resolution);
                translate([-(height-1*abacusDepth-gap)/2,-(length-1*abacusDepth-gap)/2,0]) cylinder(d=abacusDepth, h=letterHeight*4, center=true, $fn=resolution);
            }
            translate([0,+(length-0*abacusDepth-gap)/2,0]) rotate([0,90,0]) cylinder(d= letterHeight*4,h=height, center=true,$fn=4);
            translate([0,-(length-0*abacusDepth-gap)/2,0]) rotate([0,90,0]) cylinder(d= letterHeight*4,h=height, center=true,$fn=4);
            
            translate([+(height-0*abacusDepth-gap)/2,0,0]) rotate([0,90,90]) cylinder(d= letterHeight*4,h=height, center=true,$fn=4);
            translate([-(height-0*abacusDepth-gap)/2,0,0]) rotate([0,90,90]) cylinder(d= letterHeight*4,h=height, center=true,$fn=4);
        }
    }
}