#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase_counter=0;

start=false; active=false; defeated=false;
skip_intro=false; iframes=false;
snd_check=sound_isplaying("bgmBossC")
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
sound_stop_all()
with(Phase1C){instance_destroy();}
with(Phase2C){instance_destroy();}
with(SpikeD){if(speed!=0){instance_destroy();}}
with(BossBullet){alpha=0.5; killer=false}
instance_create(x-32,y-32,BossExplosion);
instance_destroy();
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

instance_create(x,y,Phase1C)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=begin phase 1
*/
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=begin phase 2
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play("sndThwomp")
instance_create(400,304,Phase2C)
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=begin phase 3
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(400,528,Phase3C)
sound_play("sndThwomp")
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
{intro=instance_create(x+8,y,BossIntroduction)
intro.font=fntBoss;
intro.str="Damocles"; intro.str2="King Crusher";}

// loop music

if(!snd_check)
{
snd_check=true;
sound_play("sndThwomp")
sound_loop("bgmBossC"); sound_set_loop_points("bgmBossC",20,154)
}

}

if(skip_intro && !instance_exists(Phase1C) && !instance_exists(BreakBlock))
{vspeed=6}


if(!Player.dead)// crusher behavior
{
// vertical check
if(Player.bbox_right>=x-sprite_width/2 && Player.bbox_left <= x+sprite_width/2 && !defeated && vspeed<=0)
{

//col_y=collision_line(x,y,x,Player.y,Block,true,true) && collision_line(x,y,x,Player.y,Crusher,true,true) && collision_line(x,y,x,Player.y,CrusherK,true,true)
col_y=!collision_line(x,y,x,Player.y,BreakBlock,true,true)&&!defeated&&(y<Player.y)
if(col_y){vspeed=6;}
}
}

if(place_meeting(x,y,Block)) // hit the floor
{

move_outside_solid(180+direction,-1)
vspeed=-4;
sound_play("sndThud")
}


if(y<112){y=112; vspeed=0} // height reset



if(HP<=20 && phase_counter==0) // end of phase 1
{
phase_counter+=1;
with(BossHPBar){hp_counter+=1}
alarm[3]=50;
}

if(HP<=10 && phase_counter==1) // end of phase 2
{
phase_counter+=1;
with(BossHPBar){hp_counter+=1}
alarm[4]=50;
}




if(HP<=0){defeated=true; alarm[1]=1}
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
draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_red,1)
}



if(instance_exists(BossIntroduction) && !skip_intro)
{
draw_set_font(fntBoss)
draw_text_transformed(64,512,"Press "+key_skip(vi_keyname)+" to Skip",1.5,1.5,0)
draw_reset()
}
