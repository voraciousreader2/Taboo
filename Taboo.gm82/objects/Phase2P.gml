#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x=BossP.x; y=BossP.y; num=13

//for(i=0; i<=1; i+=1)
//{
//for(j=0; j<=3; j+=1)
for(j=0; j<num; j+=1)
{
instance_create_moving(BossP.x,BossP.y,ProximityCherry,2.5,360*j/num)
}
