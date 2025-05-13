#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text=true; alarm[0]=100; str="Camera Obscura"; alpha=1;
alarm[1]=50; alarm[2]=800;

if(!Player.dead)
{
instance_create(Player.x,Player.y,EyeFollow)
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
alarm[1]=12;
ang=random(180); radius=random_range(200,250);

bullet_x=Player.x+lengthdir_x(radius,ang);
bullet_y=Player.y+lengthdir_y(radius,ang);
dir=ang+180;

instance_create_moving(bullet_x,bullet_y,TrailBullet,random_range(4,6),dir+random_range(-30,30));

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
instance_destroy_id(EyeFollow);
with(BossO){phase_counter=2;}
instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(text)
{
draw_set_font(fntBoss)
draw_set_halign(fa_center)
draw_text_transformed(400,128,str,1.5,1.5,0)
draw_reset()
}
