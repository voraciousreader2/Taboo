#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(image_alpha>0)
{
image_alpha-=0.01; draw_self()
}
else{instance_destroy()}
