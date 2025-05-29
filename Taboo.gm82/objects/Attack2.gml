#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text=true; alarm[0]=100; str="Stella Diabolica"; alpha=1;
alarm[1]=100; alarm[2]=850;

if(!Player.dead)
{
side=choose(1,-1)
instance_create(400-224*side, 256, StarCannonR)
instance_create(400+224*side, 256, StarCannonR)
Player.maxjumps=1; sound_play("sndLoseStar")
w=instance_create(400, 304, BlackStar)
w.image_xscale=3; w.image_yscale=3;
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text=false;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=attack loop
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(BlackStar)){with(BlackStar){instance_destroy();}}
if(!Player.dead)
{
alarm[1]=33;

angle=random(72);

for(i=0; i<=4; i+=1)
{
//obj=choose(BlackStar, DevilStar)
obj=DevilStar;
instance_create_moving(x,y,obj,5, angle+72*i)
}



}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=destroy
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//instance_destroy_id(StarCannonB);
instance_destroy_id(StarCannonR);

w.image_xscale=5; w.image_yscale=5;
Player.maxjumps=2; sound_play("sndGainStar")
with(DevilStar){killer=false; image_alpha=0.5}
with(BossO){phase_counter=3;}
instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(text)
{
draw_set_font(fntBossBig)
draw_set_halign(fa_center)
draw_set_color(c_red)
draw_text_transformed(400,80,str,1,1,0)
draw_reset()
}
