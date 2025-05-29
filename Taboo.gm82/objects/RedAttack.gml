#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=50
cycle=90;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=cycle;
if(!Player.dead)
{
instance_create(Player.x,Player.y,BulletBurstRed)
}
