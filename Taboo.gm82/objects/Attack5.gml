#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text=true; alarm[0]=100; str="Magnum Opus"; alpha=1;
alarm[1]=100; alarm[2]=850;
side=choose(true,false)

if(!Player.dead)
{
instance_create(Player.x,Player.y,EyeShield)
w1=instance_create(128,384,SideEye);
w2=instance_create(672,384,SideEye)
w1.spin=-1;
sound_play("sndShield")
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
if(!Player.dead)
{
alarm[1]=9;
r1=random_range(0,350);
r2=random_range(450,800);
spin=random_range(0.75,1.25)

if(side)
{
w1=instance_create(x,y, RainbowBullet)
w1.center_x=r1; w1.spin=-spin; w1.angle=random_range(60,120);
w1.radius=random_range(250,300);
}
else
{
w2=instance_create(x,y, RainbowBullet)
w2.center_x=r2; w2.spin=spin; w2.angle=random_range(60,120);
w2.radius=random_range(250,300)
}
side=!side

w3=instance_create_moving(x,y,BossBullet,5,random_range(210,330))
w3.image_speed=0; w3.image_index=2;
w3.image_blend=make_color_hsv(random(255),255,255)
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
with(BossO){phase_counter=0;}
with(SideEye){defeated=true;}
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
draw_text_transformed(400,80,str,1,1,0)
draw_reset()
}
