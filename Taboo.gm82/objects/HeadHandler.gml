#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
death_counter=0
head_counter=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(QueenHead){iframes=false; image_blend=c_white;}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(death_counter>=4)
{
instance_destroy_id(GoldenDiamond);
instance_destroy_id(SpinnerChaos);
with(BossCh){phase_counter+=1}
instance_destroy();
}

if(head_counter>=4)
{
head_counter=-1
alarm[0]=100

}
