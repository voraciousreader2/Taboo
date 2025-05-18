#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
unfreeze_player();
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(SpikeU){instance_create(x,y,GoldenSpikeU); instance_destroy()}
sound_play("sndStoneSlide2")
with(SpikeD){instance_create(x,y,GoldenSpikeD); instance_destroy()}
alarm[2]=100;
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
w1=instance_create(976,288,FadeWarp);
with(w1)
{
image_xscale=2; image_yscale=2;
roomTo=rOrder0;
}

sound_play("sndWarp")

w2=instance_create(1360,288,FadeWarp);
with(w2)
{
image_xscale=2; image_yscale=2;
roomTo=rChaos0;
}
#define Trigger_Trap is Triggered
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.itemcount>=3)
{
global.itemcount=3;
freeze_player();
alarm[0]=300;
alarm[1]=50;
sound_play("bgmCutscene")
}
