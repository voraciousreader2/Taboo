#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text=true; alarm[0]=100; str="Lacrimae Caelestes"; alpha=1;
alarm[1]=50; alarm[2]=800;
instance_create(384,416,Warning)
x=BossO.x; y=BossO.y;
i=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text=false;
alarm[0]=12;
w=instance_create(x,y,BulletTear);
w.direction=random_range(210,330)
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

w1=instance_create(160,224, CloudCannon)
w2=instance_create(640,224, CloudCannon)
w2.direction=180
}
with(Warning){instance_destroy();}
instance_create(384,448,FieldSJ)
alarm[4]=10
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=warning
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(CloudCannon){instance_destroy();}
instance_create(576,512,WarningT)
instance_create(160,512,WarningT)
instance_create(224,480,WarningT)
instance_create(512,480,WarningT)
alarm[3]=50
#define Alarm_3
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
with(BossO){phase_counter=4;}
with(WarningT){instance_destroy();}
with(OrderBlock){instance_destroy();}
with(BreakBlock){instance_destroy();}
with(FieldSJ){instance_destroy();}
sound_play("sndBlockChange")
instance_destroy();
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(i<8)
{
i+=1
alarm[4]=10
instance_create(384-32*i,448,FieldSJ)
instance_create(384+32*i,448,FieldSJ)
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
draw_set_color(c_aqua)
draw_text_transformed(400,80,str,1,1,0)
draw_reset()
}
