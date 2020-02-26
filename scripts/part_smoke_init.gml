///part_smoke_init

global.pt_smoke = part_type_create();
var pt = global.pt_smoke;

part_type_shape(pt, pt_shape_smoke);
part_type_size(pt,50,75,0.5,1);
part_type_colour1(pt,c_dkgray);
part_type_blend(pt,c_dkgray);
part_type_alpha2(pt,0.25,0.05);

part_type_speed(pt,0.25,2,-0.1,1);
//part_type_direction(pt,180,360,10,10);
part_type_gravity(pt,0.1,90);
part_type_life(pt, 30, 90);
