#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
HP=2; iframes=false; defeated=false;
att=noone;
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
with(HeadHandler){head_counter+=1}
iframes=true;  image_blend=c_red;
if(HP>0){sound_play("sndHit")}
//alarm[0]=200;

switch (att)
{
    case "red":
        att1=instance_create(x,y,RedNerf);
        att1.cycle=120; break;

    case "yellow":
        att2=instance_create(x,y,YellowNerf); break;
        att2.cycle=120; break;
    case "green":
        att3=instance_create(x,y,GreenAttack);
        att3.cycle=60; break;

    case "blue":
       att4=instance_create(x,y,BlueAttack);
       att4.cycle=50; break;


}

}

if(HP<=0 && !defeated)
{

defeated=true; visible=false;

switch (att)
{
    case "red":
    with(RedNerf){instance_destroy()}; break;

    case "yellow":
    with(YellowNerf){instance_destroy()}; break;

    case "green":
    with(GreenAttack){instance_destroy()}; break;

    case "blue":
    with(BlueAttack){instance_destroy()}; break;


}

with(HeadHandler){death_counter+=1}
instance_create(x-40,y-48,Explosion)
alarm[0]=1
}
