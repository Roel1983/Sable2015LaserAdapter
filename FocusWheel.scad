FocusWheel();

module FocusWheel() {
    translate([0, 0, 22])difference() {
        union() {
            linear_extrude(5, convexity=2) union() {
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
}