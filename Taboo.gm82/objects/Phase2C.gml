#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
 visible=false; active=false;
 flip=32;
if(!Player.dead)
{
if(Player.x>=400){flip=448;}
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=false;
instance_destroy_id(WarningT)
for(i=0; i<=9; i+=1)
{
w=instance_create_moving(flip+32*i,32,SpikeD,6,270)
w.sprite_index=spikeDC;
}
flip=480-flip;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(BossC))
{
if(BossC.y<=160 && !active)
{
active=true; instance_create(flip+96,160,WarningT); alarm[0]=120;


}
}
