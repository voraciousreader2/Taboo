#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
head_counter=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(head_counter>=4)
{
instance_destroy_id(GoldenDiamond);
instance_destroy_id(SpinnerChaos);
with(BossCh){phase_counter+=1}
instance_destroy();
}
