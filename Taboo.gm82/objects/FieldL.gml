#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spd=3; image_speed=1/8;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y,Player))
{
if(key_right(vi_pressed)|| key_right()){kill_player()}
}
else {input_enable(key_left)}
