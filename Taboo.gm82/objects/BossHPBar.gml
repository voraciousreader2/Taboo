#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
boss=BossJ; length=300; active=false;
hp_counter=0;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if(instance_exists(boss))
{
if(active)
{
col=c_white;
switch(hp_counter)
{
case 0: col=c_green; break;
case 1: col=c_yellow; break;
case 2: col=c_red; break;
}

    draw_rect(x-50,bbox_top-17,length,6,0,1)
    draw_rect(x-49,bbox_top-16,0.99*length*boss.HP/boss.maxHP,4,col,1,0)
}
}
