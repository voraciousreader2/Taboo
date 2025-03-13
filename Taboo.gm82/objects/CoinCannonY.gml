#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=50; dir=0; spd=4; cycle=40; correct=25;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=cycle;
instance_create_moving(x,y,BlueCoin,spd,dir)
vspeed=(Player.y-y)/correct;
