#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=50; col=c_blue;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(SineBulletU){instance_destroy();}
with(SineBulletD){instance_destroy();}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=33;
instance_create(400+random_range(-250,250),random_range(50,150),SineBulletD)
instance_create(400+random_range(-250,250),600,SineBulletU)
