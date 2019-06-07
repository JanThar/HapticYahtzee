size = 12.5;
rounding = 2.5;
resolution = 18;



difference() {
    union() {
        rotate([0,0,0]) borders();
        rotate([0,90,0]) borders();
        rotate([0,180,0]) borders();
        rotate([0,270,0]) borders();
        
        rotate([0,0,0]) dots(1,1,1,1,1,1,0);
        rotate([0,90,0]) dots(1,1,0,0,1,1,1);
        rotate([0,180,0]) dots(0,0,0,0,0,0,1);
        rotate([0,270,0]) dots(1,0,0,0,0,1,0);
        rotate([90,0,0]) dots(1,1,0,0,1,1,0);
        rotate([270,0,0]) dots(1,0,0,0,0,1,1);
    }
    cube([size, size, size], center=true);
}

cube([size, size, size], center=true);

module borders() {
    border (1,-1,1, -1,-1,1);
    border (-1,-1,1, -1,1,1);
    border (-1,1,1, 1,1,1);
}


module border(a,b,c,d,e,f) {
    hull() {
        translate([a*size/2,b*size/2,c*size/2]) sphere(d=rounding, center=true, $fn=resolution);
        translate([d*size/2,e*size/2,f*size/2]) sphere(d=rounding, center=true, $fn=resolution);
    }
}

module dots(a,b,c,d,e,f,g) {
    translate([size/4,size/4,size/2]) sphere(d=rounding*a, center=true, $fn=resolution);
    translate([-size/4,size/4,size/2]) sphere(d=rounding*b, center=true, $fn=resolution);
    translate([size/4,0,size/2]) sphere(d=rounding*c, center=true, $fn=resolution);
    translate([-0,-0,size/2]) sphere(d=rounding*g, center=true, $fn=resolution);
    translate([-size/4,0,size/2]) sphere(d=rounding*d, center=true, $fn=resolution);
    translate([size/4,-size/4,size/2]) sphere(d=rounding*e, center=true, $fn=resolution);
    translate([-size/4,-size/4,size/2]) sphere(d=rounding*f, center=true, $fn=resolution);
}