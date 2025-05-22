#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0; active=false; alarm[0]=50;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true;
sprite_index=sprCherryWhite;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active && !Player.dead)
{

if(point_distance(x,y,Player.x,Player.y)<=200)
{
active=false;
direction=point_direction(x,y,Player.x,Player.y);
speed=3.5; sprite_index=sprCherry;
alarm[0]=100;
}

}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
kill_player()
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=112
applies_to=self
invert=0
arg0=2
*/
