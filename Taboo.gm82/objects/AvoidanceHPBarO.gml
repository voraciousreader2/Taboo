#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
boss=BossO; length=400; active=false; col=c_white;
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

    draw_rect(x,bbox_top-17,length,6,0,1,0)
    draw_rect(x+0.01*length*boss.HP/boss.maxHP,bbox_top-16,0.99*length*boss.HP/boss.maxHP,4,col,1,0)
}
}
