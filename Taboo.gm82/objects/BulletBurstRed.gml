#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//image_speed=0; image_blend=c_red;
image_alpha=0.5;
cycle=80; num=8;
 alarm[0]=cycle/2; alarm[1]=cycle; killer=false;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
killer=true; image_alpha=1
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for (i=1; i<=num; i+=1)
{
b=instance_create_moving(x,y,BossBullet, random_range(3.5,5.5), 360*i/num+180*random_range(-1,1)/num)
with(b)
{
image_speed=0; image_blend=c_red; image_index=2
image_angle=direction;
}
}
instance_destroy();
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(killer){kill_player()}
