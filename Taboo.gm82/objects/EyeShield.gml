#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha=0.25
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{x=Player.x; y=Player.y;}
#define Collision_BossBullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other){speed=2}
#define Collision_RainbowBullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other){spin=0.3*sign(spin)}
