#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0; circle=true; angle=0; radius=128; t=0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_blend=make_color_hsv((global.increment*2*dt) mod 256,255,255)
if(!circle)
{
if(t<=50)
{
t+=1;
speed=speed+(5-speed)*t/50
}
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
kill_player()
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=112
applies_to=self
invert=0
arg0=2
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i=floor(image_index) mod 2
draw_sprite_ext(sprite_index,i,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,i+2,x,y,image_xscale,image_yscale,image_angle,merge_color(image_blend,$ffffff,0.35),image_alpha)
