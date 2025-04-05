#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y,Player))
{
autosave_asap()
with(BossP){start=true}
with(BreakBlock){instance_destroy();}
with(Block){instance_destroy();}
with(DialogueHandlerInteract){instance_destroy();}
with(BossSaveP){instance_destroy();}
with(UpArrow){instance_destroy();}
}
