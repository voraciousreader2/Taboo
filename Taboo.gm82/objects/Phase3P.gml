#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
num=12; radius=160;
bag_cherries=ds_bag_create();
if(!Player.dead)
{
for(i=1; i<=num; i+=1)
{
rainbow[i]=instance_create(Player.x+radius*dcos(360*i/num),Player.y+radius*dsin(360*i/num),RainbowCherry)
rainbow[i].angle=360*i/num; rainbow[i].radius=radius;
ds_bag_add(bag_cherries,rainbow[i])
}
}
alarm[0]=50;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ds_bag_clear(bag_cherries)
ds_bag_destroy(bag_cherries)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if(!ds_bag_empty(bag_cherries) && !Player.dead)
{
alarm[0]=50;
w=ds_bag_grab(bag_cherries);
w.circle=false;
w.direction=point_direction(w.x,w.y,Player.x, Player.y);
w.speed=3;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{
with(RainbowCherry)
{
if(circle)
{
angle=(angle+5) mod 360;
x=Player.x+radius*dcos(angle);
y=Player.y+radius*dsin(angle);
}

}

}
