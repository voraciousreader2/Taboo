#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase_counter=0; avoidance=false;
start=false; active=false; defeated=false;
iframes=false;
snd_check=sound_isplaying("bgmBossCh")
HP=2000; maxHP=HP;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=defeated
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed=5;
global.ending="chaos";
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=avoidance begin
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
avoidance=true;
instance_create(x,y,att1);
av.col=att1.col;
av.active=true;
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=warning
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(384,308,GoldenDiamond)
instance_destroy_id(WarningT)

g1=instance_create(150,200,GrayAttack);
g1.ang=0;
g2=instance_create(650,200,GrayAttack);
g2.ang=180;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if(start) // intro
{
active=true; start=false;
if(!instance_exists(BossIntroduction))
{intro=instance_create(x+64,y-16,BossIntroduction)
intro.font=fntBoss;
intro.str="Crimson Queen"; intro.str2="Multifaceted Maya";}

// loop music

if(!snd_check)
{
snd_check=true;
sound_loop("bgmBossCh"); sound_set_loop_points("bgmBossCh",9,130.2)
}

instance_create(x,300,HandHandler)

}

if(phase_counter==1 && !instance_exists(HeadHandler))
{
instance_create(x,500,HeadHandler);
with(HPMode){hp=2;}
image_alpha=0.5;
instance_create(x,y,SpinnerChaos);
with(SpinnerChaos){event_perform(ev_other,ev_room_start)}
alarm[2]=50
instance_create(368,308,WarningT)
}

if(phase_counter==2 && !instance_exists(AvoidanceHPBarCh))
{
with(GrayAttack){instance_destroy();}
image_alpha=1;
with(HPMode){hp=2;}

bag_av=ds_bag_create();
ds_bag_add(bag_av,BlueBuff, GreenBuff, YellowBuff, RedBuff)
att1=ds_bag_grab(bag_av);
att2=ds_bag_grab(bag_av);
att3=ds_bag_grab(bag_av);
att4=ds_bag_grab(bag_av);
ds_bag_destroy(bag_av)

av=instance_create(250,64,AvoidanceHPBarCh);
av.length=400;
alarm[1]=50;
}

if(avoidance)
{
HP-=1;
}

if(HP==1500 && avoidance)
{
instance_destroy_id(att1);
instance_create(x,y,att2);
av.col=att2.col;

}

if(HP==1000 && avoidance)
{
instance_destroy_id(att2);
instance_create(x,y,att3);
av.col=att3.col;
}

if(HP==500 && avoidance)
{
instance_destroy_id(att3);
instance_create(x,y,att4);
av.col=att4.col;
}

if(HP<=0 && !defeated)
{
instance_destroy_id(att4);
avoidance=false; alarm[0]=1; defeated=true;
av.active=false;
sound_play("sndBossDeath")
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
w=instance_create(368,304,Warp);
w.image_xscale=2; w.image_yscale=2; w.roomTo=rCreditsMakerCh;

instance_destroy();
