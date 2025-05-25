#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//duration=200;
//alarm[0]=duration;

alpha = 0;
active=false;
fade_in = false;
fade_in_rate = 1/100;
fade_out_rate = 1/75;
roomTo = room;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(key_shoot(vi_pressed) && !active)
{
active=true;
fade_in=true;
}


if(active)
{
if(fade_in){alpha += fade_in_rate;}

if(!fade_in){alpha -= fade_out_rate;}
}


if (alpha > 1) {alpha = 1; room_goto(roomTo)};




if(alpha < 0){alpha=0; active=false; instance_destroy();}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(room=rmTitle)
{instance_destroy()}
if(room=roomTo)
{fade_in=false;}

//field roomTo: room
//alarm[0]=duration;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!active)
{

draw_text(x,y, "Press "+key_shoot(vi_name)+" to advance.")

}

draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(-1, -1, room_width, room_height, false);

// reset
draw_set_color(c_white);
draw_set_alpha(1);
