#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
visible=false;
alarm[0]=50;
i=0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(i<=9)
{
w1=instance_create(32+32*i,480,ConveyorRight);
w2=instance_create(736-32*i,480,ConveyorLeft);
with(w1){spd=1};
with(w2){spd=-1};
alarm[0]=32;
i+=1;
}
