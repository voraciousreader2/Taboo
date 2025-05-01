#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
HP=4; iframes=false; defeated=false;
att=noone;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
iframes=false; image_blend=c_white;

switch (att)
{
    case "red":
    with(RedAttack){instance_destroy()}; break;

    case "yellow":
    with(YellowAttack){instance_destroy()}; break;

    case "green":
    with(GreenAttack){instance_destroy()}; break;

    case "blue":
    with(BlueAttack){instance_destroy()}; break;


}
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other){instance_destroy();}


if(HP>0 && !iframes && !defeated)
{
HP-=1;
iframes=true; alarm[0]=200; image_blend=c_red;
sound_play("sndHit")

switch (att)
{
    case "red":
        instance_create(x,y,RedAttack); break;

    case "yellow":
        instance_create(x,y,YellowAttack); break;

    case "green":
        instance_create(x,y,GreenAttack);break;

    case "blue":
        instance_create(x,y,BlueAttack);break;


}

}

if(HP<=0 && !defeated)
{
defeated=true; visible=false;
with(HeadHandler){head_counter+=1}
instance_create(x-40,y-48,Explosion)
alarm[0]=1
}
