obj_orbs_yellow.image_speed = 2;
obj_orbs_red.image_speed = 2;
obj_orbs_orange.image_speed = 2;


if( obj_lever.image_index = 0)
{
	obj_lever.image_speed = 0;
	obj_lever.image_index = 1;
}


instance_create_layer(room_width,room_height, "Instances", obj_shader);
