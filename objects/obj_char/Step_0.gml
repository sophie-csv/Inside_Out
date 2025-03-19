
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var _move = key_right - key_left;

hsp = _move * global.walksp;
vsp = vsp + grv;


if(place_meeting(x,y+1, obj_wall))
{
	currjumps = 0;
}

if(key_jump && (currjumps < global.maxjumps))
{
	vsp = -jumpsp;
	currjumps += 1;
}

// Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Horizontal Collision

if (place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
