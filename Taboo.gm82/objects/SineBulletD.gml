#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//image_index=4; image_speed=0; image_blend=c_blue;
vspeed=random_range(2.5,4.5); spin=choose(1,-1)
t=0; delta=3.6
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed=3*spin*dsin(t);
image_angle=direction;
t=(t+delta) mod 360;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
kill_player();
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
