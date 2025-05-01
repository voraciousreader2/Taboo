#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=50; col=c_red;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=90; alarm[1]=45;
if(!Player.dead)
{
instance_create(Player.x,Player.y,BulletBurstRed)
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{
alarm[1]=90;
ang=-random_range(30,150)
radius=100;
instance_create(Player.x+radius*dcos(ang),Player.y+radius*dsin(ang),BulletBurstRed)
}
