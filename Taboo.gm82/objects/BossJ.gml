#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/6; start=false; alpha=0; active=false; defeated=false;
phase_counter=0;
current_phase="none"
HP=30;
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

x=64; y=224; sprite_index=sprMageAtk2; xscale=-1;

instance_create(368,128,PhaseLeft)
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=end of phase left
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
iframes=false; sprite_index=sprMageIdle; xscale=1;
x=368; y=480
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=setup final phase
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,PhaseFinal);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(start) // intro
{
active=true; start=false
current_phase="barrage_top"
intro=instance_create(x,y,BossIntroduction)
intro.font=fntBossJ;
intro.str="Myosotis"; intro.str2="Temple Guardian";

// loop music

if(!sound_isplaying("bgmBossJ"))
{sound_loop("bgmBossJ"); sound_set_loop_points("bgmBossJ",26,185)}

//phase 1
alarm[1]=800;
burst1=instance_create(128,192,Burst360); burst1.offset=76;
burst2=instance_create(640,192,Burst360); burst2.offset=92;
burst3=instance_create(224,96,Burst360); burst3.offset=108;
burst4=instance_create(544,96,Burst360); burst4.offset=124;

}

if(HP<=20 && phase_counter<=1) // end of left phase
{
phase_counter+=1;
instance_destroy_id(PhaseLeft);
instance_destroy_id(Spinner);
instance_destroy_id(FieldL);
iframes=true;
alarm[2]=50;
}

if(phase_counter==2 && !instance_exists(PhaseCoin)) // coin phase
{
instance_create(x,y,PhaseCoin)
}

if(phase_counter==3 && !instance_exists(PhaseRight)) // right phase
{
instance_create(x,y,PhaseRight)
x=640; y=224; xscale=1; sprite_index=sprMageAtk2;
}

if(HP<=10 && phase_counter==3) // end of right phase
{
phase_counter+=1;
instance_destroy_id(Spinner); instance_destroy_id(PhaseRight);
with(FieldR){instance_destroy()}
alarm[3]=50;
x=368; y=144;
}

if(phase_counter==4 && instance_exists(PhaseFinal) && !Player.dead) //final phase
{
xscale=sign(x-Player.x);
}

if(HP<=0)
{
if(!defeated)
{defeated=true; sound_play("sndBossDeath")
instance_destroy_id(Burst360);
vspeed=5;alpha=0.5;
with(PhaseFinal){defeated=true;}
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
with(other){instance_destroy();}
HP-=1;
sound_play("sndHit")
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
if(defeated)
{draw_sprite_ext(sprMageIdle,-1,x+sprite_width*(1-xscale)/2,y,xscale,1,0,c_white,0.5)}
else
{
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

}
