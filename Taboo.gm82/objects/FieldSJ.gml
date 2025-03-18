#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/6; active=true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead && place_meeting(x,y,Player))
{active=true;
//image_blend=c_red;
if(Player.onGround || Player.onPlatform ){active=false}
if(key_jump(vi_pressed) && active && Player.djump>1){kill_player()}
}
else{active=false;
//image_blend=c_white;
}
