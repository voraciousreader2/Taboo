#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase_counter=0;
alpha=1;
start=false; active=false; defeated=false;
skip_intro=false; iframes=false;
snd_check=sound_isplaying("bgmBossCh")
HP=20; maxHP=HP;
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
{intro=instance_create(x+64,y-16,BossIntroduction)
intro.font=fntBoss;
intro.str="Crimson Queen"; intro.str2="Multifaceted Maya";}

// loop music

if(!snd_check)
{
snd_check=true;
sound_loop("bgmBossCh"); sound_set_loop_points("bgmBossCh",9,130.2)
}

}
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
alpha=0.5;
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
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!iframes && !defeated)
{
//draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,alpha)
draw_self()
}
else if(iframes)
{
draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,alpha)
}
