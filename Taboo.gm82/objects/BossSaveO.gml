#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other){instance_destroy()}
if(place_meeting(x,y,Player))
{
set_dialogue_flag("BossFlagO", true)
sound_loop("bgmBossO")
//sound_set_loop_points("bgmBossO",12,90)
autosave_asap()
with(BossO){start=true;}
with(BossSaveO){instance_destroy();}
}
