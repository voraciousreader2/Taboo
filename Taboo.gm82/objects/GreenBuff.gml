#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=50;
side=choose(1,-1); col=c_green;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(SnakingBullet){instance_destroy();}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=25;

side=-side;
bullet_x=400-side*random_range(300,350);
bullet_y=random_range(300,550);
dir=90*(1-side);
w=instance_create_moving(bullet_x,bullet_y,SnakingBullet,0,dir)
w.length=160; w.cycle=32; w.direction=dir; w.image_angle=dir
//w.image_index=5;

ex_y=random_range(100,250);
ex_x=random_range(200,600)

ex_w=instance_create_moving(ex_x,ex_y,SnakingBullet,0,270)
ex_w.length=160; ex_w.cycle=32; ex_w.image_angle=270; ex_w.direction=270;
