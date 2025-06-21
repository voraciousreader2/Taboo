#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

t=75;
//alarm[0]=t
alarm[1]=2*t
alarm[2]=10
i=0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(i<=14)
{
instance_create(608-32*i,400,FieldL)
i+=1
alarm[0]=10
}
else{alarm[1]=10}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
w=instance_create(550,128,Spinner)
with(w)
{
object=Burst360; sprite=sprOrbBlue; radius=80;
event_perform(ev_other,ev_room_start)
for(i=0; i<num; i+=1)
{
o[i].bullets=6; o[i].cycle=66;
o[i].offset=22*(i+1);
}
//with(Burst360)
//{
//bullets=6; offset=50;
//}
}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[2]=32;
//instance_create_moving(768,384,FieldL,4,180)
i=choose(0,1,2,3,4)
instance_create_moving(768,384-32*i,FieldL,4,180)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(t>=0)
{
t-=1;
draw_sprite_ext(sprFieldL,-1,x,y,3,3,0,c_white,1);
}
