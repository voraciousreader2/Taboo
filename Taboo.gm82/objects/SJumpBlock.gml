#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y-Player.vflip,Player) && key_jump(vi_pressed))
{with(Player){maxjumps=1}}
else if(Player.onGround || Player.onPlatform)
{with(Player){maxjumps=2}}
