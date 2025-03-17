#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
down=false;
alarm[0]=50;
instance_create(x,y,FieldD)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(down)
{
instance_create(x,y,FieldD);
w=instance_place(x,y,FieldU);
with(w){instance_destroy()}
}
else
{
instance_create(x,y,FieldU);
w=instance_place(x,y,FieldD);
with(w){instance_destroy()}
}
alarm[0]=50
down=!down;
