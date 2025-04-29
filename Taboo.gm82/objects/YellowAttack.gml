#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=40
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=80;
dir=random_range(30,150);
radius=300; spd=4+random_range(-0.5,0.5);
spin=choose(-1,1)*random_range(1.8,2.4)
if(!Player.dead)
{
center_x=Player.x+radius*dcos(dir+180);
center_y=Player.y+radius*dsin(dir+180);

for(i=1; i<=3; i+=1)
{
    s=instance_create(center_x,center_y,Spinner);
    s.initial_angle=dir; s.radius=16*i;
    s.cycle_length=spin;
    s.speed=spd;
    with(s)
    {
    direction=point_direction(x,y,Player.x,Player.y);
     object=BossBullet; sprite=sprAvoidanceBulletSmall;
    image_blend=c_yellow;
    num=2; max_num=2;
    event_perform(ev_other,ev_room_start)
    for(i=0; i<2; i+=1){o[i].image_speed=0;}
    }

}


}
