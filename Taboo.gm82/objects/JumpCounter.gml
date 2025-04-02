#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
counter=254;
with(Player){infjump=true}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if(counter<=0){input_disable(key_jump)}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(fntSignpost)
draw_set2(1,1)
if(!Player.dead && counter>=0)
{
if(Player.vflip==1)
{draw_text(Player.x+2, Player.y-24,string(counter))}
else if(Player.vflip==-1)
{draw_text(Player.x+2, Player.y+20,string(counter))}
}
draw_reset()
