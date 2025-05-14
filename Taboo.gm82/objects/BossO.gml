#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase_counter=0; sprite_counter=0;
start=false; active=false; defeated=false;
skip_intro=false;
sound_stop_all()
HP=4500; maxHP=HP; counter=0;
alpha=1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true;
phase_counter=1;
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
alarm[0]=300;
start=false;



if(!instance_exists(BossIntroduction))
{intro=instance_create(x+64,y-16,BossIntroduction)
intro.font=fntBoss; intro.alarm[0]=150*dt;
intro.str="Oculus Miraculus"; intro.str2="Eternal Watcher";}



}

if(key_skip(vi_pressed) && instance_exists(BossIntroduction)){skip_intro=true;}
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
    case 1: instance_create(x,y,Attack1); sprite_counter=phase_counter;
    phase_counter=0; break;

    case 2: instance_create(x,y,Attack2); sprite_counter=phase_counter;
    phase_counter=0; break;

    case 3: instance_create(x,y,Attack3); sprite_counter=phase_counter;
    phase_counter=0; break;

    case 4: instance_create(x,y,Attack4); sprite_counter=phase_counter;
    phase_counter=0; break;

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
switch (sprite_counter)
{
    case 0: sprite_index=sprEye; break;
    case 1: sprite_index=sprEyeRed; break;
    case 2: sprite_index=sprEyeStar; break;
    case 3: sprite_index=sprEye; break;
    case 4: sprite_index=sprEyePurple; break;

}


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
    draw_sprite(sprite_index,-1,x,y)
    d3d_set_fog(0,0,0,0)
}else{draw_sprite(sprite_index,-1,x,y)}

if(instance_exists(BossIntroduction) && !skip_intro && !defeated)
{
draw_set_halign(fa_center); draw_set_font(fntBossBig);
draw_text_transformed(400,400,"Press "+key_skip(vi_keyname)+" to Skip",1,1,0)
draw_reset()
}

if(defeated)
{
draw_set_alpha(alpha)
 draw_self()
 alpha-=0.01;
 draw_reset();
 if(alpha<=0){instance_destroy()}
}
