#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t=0; spin=1; alpha=1; defeated=false;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t=(t+10) mod 360;
draw_sprite_ext(sprite_index,-1,x,y,1,1,t*spin,c_white,1)

if(defeated)
{
draw_set_alpha(alpha)
 alpha-=0.01;
 draw_sprite_ext(sprEyeRainbow,-1,x,y,1,1,t*spin,c_white,alpha)
 draw_reset();
 if(alpha<=0)
 {
 instance_destroy()
 }
}
