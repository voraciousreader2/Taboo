#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true; rule=1;
groundjump=false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{

switch(rule)
{
case 0: break;

case 1:
if(Player.djump==Player.maxjumps && active)
{jail_player()}
 break;

case 2:
if(Player.djump<Player.maxjumps && active &&key_jump(vi_pressed))
{jail_player();}
break;

}

}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field rule: number


add_rule(rule)
