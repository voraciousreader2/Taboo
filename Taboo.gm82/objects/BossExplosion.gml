#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/2; alarm[0]=32
sound_play("sndExplosion")
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
w=instance_create(368,496,FadeWarp);
with(w)
{
image_xscale=2;image_yscale=2;
roomTo=rHub; faderate=0.02; unfaderate=0.02;
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(visible){kill_player();}
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
visible=false; image_speed=0
