#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=50;
cycle=35
side=choose(1,-1);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=cycle;

side=-side;
bullet_x=400-side*random_range(300,350);
bullet_y=random_range(300,550);
bullet_y=16*round(bullet_y/16);
dir=90*(1-side);
w=instance_create_moving(bullet_x,bullet_y,SnakingBullet,0,dir)
w.length=160; w.cycle=48; w.direction=dir; w.image_angle=w.direction;
//w.image_index=5;
