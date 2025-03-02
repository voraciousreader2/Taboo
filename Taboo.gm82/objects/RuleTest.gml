#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{
if(Player.djump==Player.maxjumps && active)
{instance_create(Player.x,Player.y+Player.vspeed,MiniCage);
 sound_play("sndJail"); active=false}
}
