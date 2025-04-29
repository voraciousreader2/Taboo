#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y,Player))
{
set_dialogue_flag("BossFlagC", true)
autosave_asap()
with(BossCh){start=true}
with(BossHPBar){active=true}
with(BossSaveCh){instance_destroy();}
}
