#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active && !Player.dead && place_meeting(x,y-Player.vspeed,Player))
{
Player.vspeed=-10*Player.vflip;
active=false;
alarm[0]=15;
sound_play("sndBoing")
}
