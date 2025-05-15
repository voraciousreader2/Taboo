#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text=true; alarm[0]=100; str="Anima Lapidea"; alpha=1;
alarm[1]=50; alarm[2]=800; alarm[3]=50;

side=choose(1,-1);
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
alarm[1]=30;
side=-side;

crusher_y=16*round(Player.y/16);

instance_create(400+300*side,crusher_y, CrusherK)
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
with(CrusherK){instance_destroy();}

with(BossO){phase_counter=5;}
instance_destroy();
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=attack loop 2
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[3]=40;

offset=random(72);
for(i=1; i<=5; i+=1)
{
 for(j=1; j<=3; j+=1)
 {
  w=instance_create_moving(x,y,BossBullet,j+1.5,offset+72*i+18*j);
  w.image_angle=w.direction;
  w.image_index=4;  w.image_speed=0; w.image_blend=c_purple;
 }
 }
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
draw_set_color(c_purple)
draw_text_transformed(400,80,str,1,1,0)
draw_reset()
}
