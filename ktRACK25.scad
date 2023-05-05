//
// ktRack25
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;




A();


module A()
{
difference()
{
    union()
    {
        translate([0, 0, 59-20]) cube([35, 50, 20]);
        translate([0, -40, 0]) cube([35, 40, 70]);
    }
    translate([-10, -40-80, -50]) rotate([15, 0, 0]) cube([100, 100, 100]);
    translate([-10, -11, -50]) rotate([-10, 0, 0]) cube([100, 50, 70]);
    
    SAKU();
}
}






module SAKU()
{
    color("#FFFFFF")
    {
        cube([25.1+1, 35.3+1, 200]);
        translate([-50, -(32+1), 59]) cube([200, 32+1, 45.4+1]);
        translate([-50, -(30), -100]) cube([200, 100, 100]);
    }
}



module screw_hole()
{
    cylinder( 10, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 10, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}
module screw_hole2()
{
    translate([0, 0, -5]) cylinder( 20, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 3, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}


module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(5, 1.5, 1.5, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.5+0.7, 1.5, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 3.25+0.4, 3.25-0.6, $fn=30);
    translate([0, 0, -10]) cylinder(10, 3.25+0.4, 3.25+0.4, $fn=30);
}