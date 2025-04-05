#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0; active=true;
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

if(hspeed!=0 && abs(x-Player.x)<=abs(hspeed))
{
sprite_index=sprCherryBlack;
vspeed=abs(hspeed)*sign(Player.y-y); hspeed=0;
active=false; alarm[0]=50;
}
else if(vspeed!=0 && abs(y-Player.y)<=abs(vspeed))
{
sprite_index=sprCherryBlack;
hspeed=abs(vspeed)*sign(Player.x-x); vspeed=0;
active=false; alarm[0]=50;
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
