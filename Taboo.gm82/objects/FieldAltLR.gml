#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
left=false;
alarm[0]=50;
instance_create(x,y,FieldL)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(left)
{
instance_create(x,y,FieldL);
w=instance_place(x,y,FieldR);
with(w){instance_destroy()}
}
else
{
instance_create(x,y,FieldR);
w=instance_place(x,y,FieldL);
with(w){instance_destroy()}
}
alarm[0]=50
left=!left;
