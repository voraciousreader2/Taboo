#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=4; image_yscale=4; alarm[0]=50
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=20;
angle=8*image_index;

for(i=0; i<=4; i+=1)
{
instance_create_moving(x,y,DevilStar, 5, angle+72*i)
}
