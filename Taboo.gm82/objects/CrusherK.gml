#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true; cooldown=0; killer=true;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{
// vertical check
if(Player.bbox_right>=x-16*image_xscale && Player.bbox_left <= x+16*image_xscale && active && speed==0)
{
col_y=collision_line(x,y,x,Player.y,Block,true,true)
if(!col_y){vspeed=3.75*sign(Player.y-y);}
}
//horizontal check
if(Player.bbox_top<=y+16*image_xscale && Player.bbox_bottom >= y-16*image_xscale && active && speed==0)
{
col_x=collision_line(x,y,Player.x,y,Block,true,true)
if(!col_x){ hspeed=3.75*sign(Player.x-x);}
}


}


if(place_meeting(x,y,Block)) // hit a wall
{
sound_play("sndThud")
move_outside_solid(180+direction,-1)
active=false; speed=0; cooldown=50;
}

if(cooldown<=0) // cooldown
{
cooldown=0; active=true;
}
else{cooldown-=1}

if(killer && place_meeting(x,y,Player)){kill_player()}
