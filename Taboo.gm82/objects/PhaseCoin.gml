#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i=1;
alarm[0]=100; alarm[1]=100; alarm[2]=850;

warning=instance_create(352,288,Warning);
warning.image_xscale=1.5;
warning.image_yscale=1.5;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy_id(Warning);
w1=instance_create(352,288,CoinBlock);

with(w1)
{
image_xscale=3; image_yscale=3; max_coin=5
}

w2=instance_create(96,160,CoinCannonY);
with(w2){correct=40; cycle=60;}

w3=instance_create(672,256,CoinCannonY);
with(w3){dir=180; correct=60;}

w4=instance_create(384,64,CoinCannonX);
with(w4){dir=270;}

w5=instance_create(400,272,Spinner)
with(w5)
{
num=1; initial_angle=90; cycle_length=3.6; object=CoinCannonCircle;
sprite=sprYinYang; radius=150;
event_perform(ev_other,ev_room_start)
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(i<=13)
{
w=instance_create(608-32*i,416,SpikeU)
i+=1
with(w)
{
path_start(pathU32,1,0,false);
sprite_index=spikeUJ;
}
alarm[1]=10
}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(CoinCannonX){instance_destroy();}
with(CoinCannonY){instance_destroy();}
with(CoinCannonCircle){instance_destroy();}

with(SpikeU)
{
if(x>160 && x<608)
{
vspeed=1;
}
}


alarm[3]=33;
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(SpikeU){vspeed=0}
with(BossJ){phase_counter+=1;}
with(CoinBlock){instance_destroy(); sound_play("sndBlockChange")}
instance_destroy()
