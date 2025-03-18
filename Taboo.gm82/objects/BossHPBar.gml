#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
boss=BossJ; length=300; active=false;
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
    draw_rect(x-50,bbox_top-17,length,6,0,1)
    draw_rect(x-49,bbox_top-16,0.99*length*boss.HP/boss.maxHP,4,$ff,1,0)
}
}
