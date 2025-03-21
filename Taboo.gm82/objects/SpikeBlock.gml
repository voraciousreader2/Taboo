#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
solid=true; killer=false; image_speed=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(killer && place_meeting(x,y,Player)){kill_player()}
if(place_meeting(x,y-Player.vflip,Player) && key_jump(vi_pressed))
{
if(!killer){sound_play("sndSpikeBlock")}
killer=true; solid=false; image_index=1;
}
