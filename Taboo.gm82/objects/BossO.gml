#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase_counter=0; avoidance=false;
start=false; active=false; defeated=false;
skip_intro=false;
snd_check=sound_isplaying("bgmBossO")
HP=4500; maxHP=HP; counter=0;
alpha=1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true;
av=instance_create(200,64,AvoidanceHPBarO)
av.active=true;
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=avoidance begin
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(start) // intro
{
alarm[0]=500;
start=false;


active=true; start=false;
if(!instance_exists(BossIntroduction))
{intro=instance_create(x+64,y-16,BossIntroduction)
intro.font=fntBoss; intro.alarm[0]=150*dt;
intro.str="Oculus Miraculus"; intro.str2="Eternal Watcher";}

phase_counter=1;

}

if(key_skip(vi_pressed)){skip_intro=true;}
if(skip_intro)
{
skip_intro=false;
alarm[0]=1;
}

if(active && !defeated)
{
HP-=1;

switch (phase_counter)
{
    case 1: instance_create(x,y,Attack1); phase_counter=0; break;

}



}






if(HP<=0 && !defeated)
{
defeated=true;
sound_stop_all();
sound_play("sndBossDeath");
 alarm[1]=100;
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch (counter mod 60) {
    case  0: {y-=1}break
    case 10: {y-=2}break
    case 20: {y-=1}break
    case 30: {y+=1}break
    case 40: {y+=2}break
    case 50: {y+=1}break
}

counter=(counter+1) mod 600

if (counter>300 && counter<350 && counter mod 4 <2 && !defeated) {
    d3d_set_fog(1,$ffffff,0,0)
    draw_self()
    d3d_set_fog(0,0,0,0)
}else{draw_self()}

if(defeated)
{
draw_set_alpha(alpha)
 draw_self()
 alpha-=0.01;
 draw_reset();
 if(alpha<=0){instance_destroy()}
}
