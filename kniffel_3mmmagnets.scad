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

abacusWidth = 6.7;
abacusHeight = 3;


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

//*****************************************************
// render all ob=jects for one color print, otherwise comment out parts and render seperat

brailleText();
//blackText();
translate([0,-50,letterHeight/2]) grid();
bottomPart();

module bottomPart() {
    union() {
        difference() {
            translate([0,-50,-letterHeight]) basePlate();
            translate([0,3,-letterHeight]) counterBox() ;
            translate([0,0,-letterHeight]) checkBox();
        }
    }   
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
            translate([-4.7*(letterSize+letterDistance),abacusWidth*0-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
            translate([-4.7*(letterSize+letterDistance),abacusWidth*2-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
            translate([-4.7*(letterSize+letterDistance),abacusWidth*4-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
        
            translate([4.7*(letterSize+letterDistance),abacusWidth*0-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
            translate([4.7*(letterSize+letterDistance),abacusWidth*2-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
            translate([4.7*(letterSize+letterDistance),abacusWidth*4-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
        }
    }
}
    
module checkBox() {
    difference() {
        translate([7*(letterSize+letterDistance)+letterDistance/2-letterSize/2,0,-letterHeight*1])
        for (i=[0:15]) {
            translate([letterDistance/2+letterSize/2,0,0])
            translate([-i*(letterSize+letterDistance),12,0]) holes(2);
        }
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
            
//            translate([-4.7*(letterSize+letterDistance),abacusWidth*0-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
//            translate([-4.7*(letterSize+letterDistance),abacusWidth*2-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
//            translate([-4.7*(letterSize+letterDistance),abacusWidth*4-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
//        
//            translate([4.7*(letterSize+letterDistance),abacusWidth*0-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
//            translate([4.7*(letterSize+letterDistance),abacusWidth*2-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
//            translate([4.7*(letterSize+letterDistance),abacusWidth*4-120,-letterHeight*1]) rotate([0,0,90]) holes(10);
            
            for(i=[1:10]) {
                translate([i*abacusWidth-(abacusWidth*(10+1))/2-4.7*(letterSize+letterDistance),abacusWidth*1-53.5,0])
                    cube([lineWidth,5,letterHeight*1], center=true);
                translate([i*abacusWidth-(abacusWidth*(10+1))/2-4.7*(letterSize+letterDistance),abacusWidth*1-67,0])
                    cube([lineWidth,5,letterHeight*1], center=true);
                translate([i*abacusWidth-(abacusWidth*(10+1))/2+4.7*(letterSize+letterDistance),abacusWidth*1-53.5,0])
                    cube([lineWidth,5,letterHeight*1], center=true);
                translate([i*abacusWidth-(abacusWidth*(10+1))/2+4.7*(letterSize+letterDistance),abacusWidth*1-67,0])
                    cube([lineWidth,5,letterHeight*1], center=true);
            }

            
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

        

module holes(number) {
        hull() {
            translate([0,(number-1)*abacusWidth/2,letterHeight]) cylinder(d=abacusHeight, h=letterHeight*4, center=true, $fn=resolution);
            translate([0,-(number-1)*abacusWidth/2,letterHeight]) cylinder(d=abacusHeight, h=letterHeight*4, center=true, $fn=resolution);
        }
        for(i=[1:number]) {
            translate([0,i*abacusWidth-(abacusWidth*(number+1))/2,letterHeight])
                cylinder(d=7, h=letterHeight*4, center=true, $fn=resolution);
        }
}
