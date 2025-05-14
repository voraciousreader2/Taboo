#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text=true; alarm[0]=100; str="Stella Diabolica"; alpha=1;
alarm[1]=50; alarm[2]=800;

if(!Player.dead)
{
side=choose(1,-1)
instance_create(400-224*side,208, StarCannonB)
instance_create(400+224*side,208, StarCannonR)

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
alarm[1]=30;

angle=random(72);

for(i=0; i<=4; i+=1)
{
obj=choose(BlackStar, DevilStar)
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
instance_destroy_id(StarCannonB);
instance_destroy_id(StarCannonR);
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
draw_text_transformed(400,80,str,1,1,0)
draw_reset()
}
