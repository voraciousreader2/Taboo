#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/8; start=false; alpha=0; active=false;
phase_counter=0;
current_phase="none"
HP=70;
iframes=false;
xscale=1;
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
arg0=end of phase 1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase_counter+=1;
with(Burst360){instance_destroy()}

x=64; y=224; sprite_index=sprMageAtk; xscale=-1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(start)
{
active=true; start=false
current_phase="barrage_top"
intro=instance_create(x,y,BossIntroduction)
intro.font=fntBossJ;
intro.str="Myosotis"; intro.str2="Temple Guardian";


//phase 1

if(!sound_isplaying("bgmBossJ"))
{sound_loop("bgmBossJ"); sound_set_loop_points("bgmBossJ",33,184)}

alarm[1]=800;
burst1=instance_create(128,192,Burst360); burst1.offset=76;
burst2=instance_create(640,192,Burst360); burst2.offset=92;
burst3=instance_create(224,96,Burst360); burst3.offset=108;
burst4=instance_create(544,96,Burst360); burst4.offset=124;

}
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!iframes)
{
iframes=true;
alarm[0]=50;
with(other){instance_destroy();}
HP-=1;
sound_play("sndBossHit")
}
else
{
with(other){x=xprevious;y=yprevious direction=direction+180;}
sound_play("sndBoing")
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active && !iframes)
{
alpha+=0.05;
if(alpha>1){alpha=1}
draw_sprite_ext(sprite_index,-1,x+sprite_width*(1-xscale)/2,y,xscale,1,0,c_white,alpha)
}
else if(iframes)
{
alpha=0.8;
draw_sprite_ext(sprite_index,-1,x+sprite_width*(1-xscale)/2,y,xscale,1,0,c_red,alpha)
}
