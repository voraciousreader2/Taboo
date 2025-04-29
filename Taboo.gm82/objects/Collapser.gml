#define Trigger_Trap is Triggered
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other)
{
path_start(pathD64,4,0,false)
instance_destroy()
}
sound_play("sndBlockBreak")
instance_destroy();
