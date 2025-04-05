#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x=BossP.x; y=BossP.y;
for(i=0; i<=1; i+=1)
{
for(j=0; j<=3; j+=1)
{
instance_create_moving(x,y,CrossCherry,2.5+i,90*j)
}
}
