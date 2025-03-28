if(room == rm_start)
{
draw_text(room_width/2, 300, "PRESS ENTER TO START");
}
else if (room == rm_gameover)
{
	draw_text(room_width/2, 300, "YOU WON! YOU COLLECTED:  " + global.player_score);
}