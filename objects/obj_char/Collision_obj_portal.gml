if(rm_level1)
{
	if( global.num_balls > 5)
	{
		room_goto(rm_level2);
	}
}
else if(rm_level2)
{
	if( global.num_balls > 10)
	{
		room_goto(rm_level3);
	}
}
else if(rm_level3)
{
	if( global.num_balls > 15)
	{
		room_goto(rm_level3);
	}
}