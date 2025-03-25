#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
 visible=false; active=false;
cycle=120;
flip=choose(0,32);
alarm[0]=cycle;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(BossC))
{
if(BossC.phase_counter==2){cycle=150;}
}



for(i=0; i<=4; i+=1)
{
w1=instance_create_moving(flip+32+64*i,32,SpikeD,4,270)
w1.sprite_index=spikeDC;

w2=instance_create_moving(flip+448+64*i,32,SpikeD,4,270)
w2.sprite_index=spikeDC;

}
flip=32-flip;
alarm[0]=cycle;
