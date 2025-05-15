#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0; image_index=2;
spin=1;
image_blend=make_color_hsv(random(255),255,255)
center_x=400; center_y=560; angle=90; radius=300;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x=center_x+lengthdir_x(radius,angle);
y=center_y+lengthdir_y(radius,angle);
image_angle=angle+90*sign(spin)
angle=angle+1.5*spin;
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
action_id=603
applies_to=self
*/
instance_destroy()
