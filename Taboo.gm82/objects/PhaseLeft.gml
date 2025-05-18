#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

t=50;
alarm[0]=t
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
w=instance_create(550,150,Spinner)
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
