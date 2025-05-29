#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1]=60; col=c_red; cycle=120
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(BulletBurstRed){instance_destroy();}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{
alarm[1]=cycle;
ang=-random_range(30,150)
radius=150;
instance_create(Player.x+radius*dcos(ang),Player.y+radius*dsin(ang),BulletBurstRed)
}
