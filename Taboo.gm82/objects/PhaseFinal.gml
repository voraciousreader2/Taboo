#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
defeated=false;
t=50;
alarm[0]=t
i=0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(i<=11)
{
w1=instance_create(160,32+32*i,FieldU);
w2=instance_create(608,32+32*i,FieldU);
i+=1
w1.image_index=(i mod 8 )
w2.image_index=(i mod 8 )
alarm[0]=8


}
else{alarm[1]=10}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
w3=instance_create(384,96,Burst360);
with(w3)
{bullets=10; cycle=66; offset=33;}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
w=instance_create(368,128,FadeWarp);
w.image_xscale=2; w.image_yscale=2;
w.roomTo=rHub;
w.faderate=0.02; w.unfaderate=0.02;
instance_destroy();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(defeated){alarm[2]=200; defeated=false}
