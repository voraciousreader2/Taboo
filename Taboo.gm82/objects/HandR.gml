#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0; image_index=0;
maxHP=6; HP=maxHP;
iframes=true; defeated=false;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
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
if(instance_exists(HandL))
{with(HandL){if(iframes){alarm[0]=80}}}

HP-=1; sound_play("sndHit")
iframes=true

}

if(HP<=0)
{
if(!defeated){sound_play("sndMegaDelfruit")}
iframes=true; defeated=true;
vspeed=5;
image_index=3;

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
if(iframes && HP>0 && HP<maxHP){image_blend=c_red}
else{image_blend=c_white}
draw_self()
