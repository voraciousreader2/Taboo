#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x=BossP.x; y=BossP.y;

//for(i=0; i<=1; i+=1)
//{
//for(j=0; j<=3; j+=1)
for(j=0; j<=11; j+=1)
{
instance_create_moving(BossP.x,BossP.y,ProximityCherry,4,30*j)
}
