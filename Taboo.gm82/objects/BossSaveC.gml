#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y,Player))
{
autosave_asap()
with(BossC){start=true}
with(BossHPBar){active=true}
with(BreakBlock){instance_destroy();}
with(BossSaveC){instance_destroy();}
}
