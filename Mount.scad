$fn = 64;

Mount();

module Mount() {
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
}
