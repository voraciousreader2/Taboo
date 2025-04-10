#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
iframes=true; image_xscale=4; image_yscale=4;
snd_check=sound_isplaying("bgmBossP");

start=false; active=false; defeated=false;
phase_counter=0;
skip_intro=false;

col1=c_red; col2=c_yellow; col3=c_yellow;
HP=30; maxHP=HP;

bag_phase=ds_bag_create()
ds_bag_add(bag_phase, Phase1P);
ds_bag_add(bag_phase, Phase2P);
ds_bag_add(bag_phase, Phase3P);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=iframes
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha=1; iframes=false
#define Alarm_1
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
if(active)
{
sound_play("sndMegaDelfruit")
ds_bag_clear(bag_phase);
ds_bag_destroy(bag_phase);
w=instance_create(368,272,FadeWarp);
w.image_xscale=2; w.image_yscale=2;
w.roomTo=rHub;
w.faderate=0.02; w.unfaderate=0.02;
active=false;}
//instance_destroy()
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=begin moving
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true; iframes=false;
dir=random_range(30,60)+90*irandom_range(0,3);
speed=4; direction=dir;
alarm[3]=1;
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=begin phase
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
iframes=false;
current_phase=ds_bag_grab(bag_phase)
instance_create(400,304,current_phase)

//instance_create(400,304,Phase1P)
//instance_create(x,y,Phase2P)
//instance_create(400,304,Phase3P)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(key_skip(vi_pressed) && !active && !instance_exists(Block))
{skip_intro=true; active=true;}
if(start) // intro
{
 start=false; alarm[2]=50;
if(!instance_exists(BossIntroduction))
{intro=instance_create(x+32,y-32,BossIntroduction)
intro.font=fntBoss;
intro.str="Apple of Discord"; intro.str2="Forbidden Fruit";}

// loop music

if(!snd_check)
{
snd_check=true;
sound_loop("bgmBossP"); sound_set_loop_points("bgmBossP",0,124.5)
}

}
if(skip_intro)
{alarm[2]=1; skip_intro=false}

if(HP<=20 && phase_counter==0)
{
phase_counter+=1;
instance_destroy_id(current_phase);
with(WrapCherry){instance_destroy();}
with(RainbowCherry){instance_destroy();}
with(CrossCherry){instance_destroy();}
alarm[3]=50; iframes=true;
}

if(HP<=10 && phase_counter==1)
{
phase_counter+=1;
instance_destroy_id(current_phase);
with(WrapCherry){instance_destroy();}
with(RainbowCherry){instance_destroy();}
with(CrossCherry){instance_destroy();}
alarm[3]=50; iframes=true;
}


if(HP<=0 && active) //defeated
{defeated=true;
sound_stop_all();

with(WrapCherry){instance_destroy();}
with(RainbowCherry){instance_destroy();}
with(CrossCherry){instance_destroy();}
 alarm[1]=1;}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!defeated){kill_player()}
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!iframes && !defeated)
{
iframes=true;
alarm[0]=50;
with(other){instance_destroy();}
HP-=1;
sound_play("sndHit")
}
else
{
with(other)
{
x=xprevious;y=yprevious; direction=direction+180;
if(!bounce){sound_play("sndBoing")}
bounce=true;
}

}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=112
applies_to=self
invert=0
arg0=2
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//if(!start){col3=cyellow;}
if(iframes && !defeated && active)
{
//draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,alpha)
col3=c_white;
}
else
{col3=merge_color_corrected(col1,col2,HP/maxHP)}

if(defeated){draw_set_alpha(0.5)}

draw_cherry(x,y,4,4,0,col3)
draw_reset();

if(instance_exists(BossIntroduction) && !skip_intro)
{
draw_set2(1,1)
draw_set_font(fntBoss)
draw_text_transformed(400,512,"Press "+key_skip(vi_keyname)+" to Skip",1.5,1.5,0)
draw_reset()
}
