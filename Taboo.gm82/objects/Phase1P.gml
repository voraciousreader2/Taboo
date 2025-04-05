#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i=0; i<=7; i+=1)
{
for(j=0; j<=5; j+=1)
{
instance_create(50+100*i,50+100*j,WrapCherry)
}
}
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(WrapCherry){instance_destroy()}
