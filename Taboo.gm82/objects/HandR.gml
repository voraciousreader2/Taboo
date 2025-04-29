#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0; image_index=1;
maxHP=10; HP=maxHP;
iframes=false;
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

with(other){instance_destroy();}

if(!iframes)
{
with(HandL){iframes=false}
HP-=1; sound_play("sndHit")
iframes=true
}


if(HP<=0)
{
iframes=true;
vspeed=5;
image_index=3;
sound_play("sndMegaDelfruit")
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(iframes && HP>0){image_alpha=0.5}
else{image_alpha=1}
draw_self()
