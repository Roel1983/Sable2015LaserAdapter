$fn = 64;
difference() {
    union() {
        cylinder(d1=37.3, d2=37.8, h =19.51);
        translate([0,0,19.5]) cylinder(d=49, h=1);
    }
    cylinder(d=20, h=100, center=true);
}
translate([0,0, 30 + 19.5])difference() {
    translate([0,0,5])cube([25+6,2*16+6, 70], true);
    cube([24, 2*16, 100], true);
    rotate(-22.5,[1,0,0]) translate([0,-40/2]) cube([40,40, 100], true);
    for(z=[-20,20], x=[-8,8]) translate([x, 0, z+10]) {
        rotate(90, [1,0,0])cylinder(d=3.5, h=100, center=true);
    }
}

translate([0, 0, 22])difference() {
    union() {
        linear_extrude(5) union() {
            circle(r=10);
            for(a=[0:15:359.9]) rotate(a) {
                translate([10,0]) rotate(45) square(2, true);
            }
        }
        translate([0,0,-1])cylinder(d=19.5, h=1);
    }    
    difference() {
        cylinder(d=12.6, h=8);
        translate([0,0,3.5]) cube([100,100,1], true);
        translate([0,0,1.5]) cube([100,100,1], true);
    }
    
    cylinder(d=12.4, h=8);
    cylinder(d=8, h=8, center= true);
    translate([0,0,3.5]) cylinder(d1=10, d2=14, h=2);
}