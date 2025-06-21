#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

t=75;
//alarm[0]=t
alarm[2]=t
alarm[1]=2*t
i=0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(i<=14)
{
instance_create(160+32*i,400,FieldR)
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
w=instance_create(250,125,Spinner)
with(w)
{
object=Burst360; sprite=sprOrbBlue; radius=80; motion_type="flower";
flower_length=4;
event_perform(ev_other,ev_room_start)


for(i=0; i<num; i+=1)
{
o[i].bullets=5; o[i].cycle=66;
o[i].offset=22*(i+1);
}

}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[2]=32;
//instance_create_moving(0,384,FieldR,4,0)
i=choose(0,1,2,3,4)
instance_create_moving(0,384-32*i,FieldR,4,0)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(t>=0)
{
t-=1;
draw_sprite_ext(sprFieldR,-1,368,128,3,3,0,c_white,1);
}
