#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speeed=0; killer=true; image_blend=c_red;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
kill_player();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i=0; i<=4; i+=1)
{
draw_sprite_ext(sprite_index,0,x-i*1.5*hspeed,y-i*1.5*vspeed,1-0.1*i, 1-0.1*i,0,c_red,1-0.15*i)
}
