#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cycle=75;
x_center=x; y_center=y;
alarm[0]=25;
radius=150;  image_speed=1/4

angle=90;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=cycle;
instance_create_moving(x,y,BlueCoin,5,point_direction(x,y,Player.x,Player.y))
