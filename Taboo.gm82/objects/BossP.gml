#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
iframes=false; image_xscale=4; image_yscale=4;
snd_check=sound_isplaying("bgmBossP")
start=false; active=false; defeated=false;
phase_counter=0;
skip_intro=false;

col1=c_red; col2=c_yellow;
HP=30; maxHP=HP;
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
instance_destroy()
instance_create(x,y,Warp)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(key_skip(vi_pressed)){skip_intro=true;}
if(start) // intro
{
active=true; start=false; alarm[2]=50;
if(!instance_exists(BossIntroduction))
{intro=instance_create(x,y,BossIntroduction)
intro.font=fntBoss;
intro.str="Ygramul"; intro.str2="The Multiple";}

// loop music

if(!snd_check)
{
snd_check=true;
sound_loop("bgmBossP"); sound_set_loop_points("bgmBossP",0,124.5)
}

}

if(HP<=0) //defeated
{defeated=true; alarm[1]=1;}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
kill_player()
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
with(other){x=xprevious;y=yprevious; direction=direction+180;}
sound_play("sndBoing")
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!iframes && !defeated)
{
//draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,alpha)
draw_set_alpha(1);
}
else
{
draw_set_alpha(0.5);
}
col3=merge_color_corrected(col1,col2,HP/maxHP)
draw_cherry(x,y,4,4,0,col3)

if(instance_exists(BossIntroduction) && !skip_intro)
{
draw_set2(1,1)
draw_set_font(fntBoss)
draw_text_transformed(400,512,"Press "+key_skip(vi_keyname)+" to Skip",1.5,1.5,0)
draw_reset()
}
