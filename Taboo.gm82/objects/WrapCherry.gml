#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
killer=false; alpha=0.5; alarm[0]=50; image_speed=0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
killer=true;
direction=BossP.dir+90; speed=2;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(killer){kill_player();}
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
if(alpha<1){alpha+=0.01}
draw_set_alpha(alpha)
image_blend=BossP.col3;
draw_sprite_ext(sprite_index,-1,x,y,1,1,0,image_blend,alpha)
draw_reset()
