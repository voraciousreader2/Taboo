#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y,Player))
{
autosave_asap()
with(BossJ){start=true}
with(BossHPBar){active=true}
instance_destroy()
}
