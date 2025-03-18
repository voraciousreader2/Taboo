#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cycle=64;
offset=100;
bullets=12;
t=0;
alpha=0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
offset-=1;
if(offset<=0)
{offset=0; t+=1;}
if(t>=cycle)
{
t=0;
for(i=1; i<=bullets; i+=1)
{
w=instance_create_moving(x+16,y+16,BulletBlue, 5+random_range(-2,2),(i+random_range(-0.5,0.5))*360/bullets)
}
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field bullets: number
//field cycle: number
//field offset: number
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha+=0.05;
if(alpha>=1){alpha=1};
draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,alpha)
