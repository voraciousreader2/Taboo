#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/8; start=false; alpha=0; active=false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(start)
{
active=true; start=false

if(!sound_isplaying("bgmBossJ"))
{sound_loop("bgmBossJ"); sound_set_loop_points("bgmBossJ",33,184)}

}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active)
{
alpha+=0.05;
if(alpha>1){alpha=1}
draw_sprite_ext(sprMageAtk,-1,x,y,1,1,0,c_white,alpha)
}
