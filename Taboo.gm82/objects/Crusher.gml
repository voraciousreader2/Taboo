#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true; cooldown=0; max_cool=25;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{
// vertical check
if(Player.bbox_right>=x-16*image_xscale && Player.bbox_left <= x+16*image_xscale && active && speed==0)
{

col_y=collision_line(x,y,x,Player.y,Block,true,true) || collision_line(x,y,x,Player.y,CoinBlock,true,true)
//col_y=collision_line(x,y,x,Player.y,Block,true,true)
if(!col_y){vspeed=3.75*sign(Player.y-y);}
}
//horizontal check
if(Player.bbox_top<=y+16*image_xscale && Player.bbox_bottom >= y-16*image_xscale && active && speed==0)
{
col_x=collision_line(x,y,Player.x,y,Block,true,true) || collision_line(x,y,Player.x,y,CoinBlock,true,true)
//col_x=collision_line(x,y,Player.x,y,Block,true,true)
if(!col_x){ hspeed=3.75*sign(Player.x-x);}
}


}


if(place_meeting(x,y,Block) || place_meeting(x,y,CoinBlock)) // hit a wall
{
sound_play("sndThud")
speed=0;
move_outside_solid(180+direction,-1)
active=false;  cooldown=max_cool;
}

if(place_meeting(x,y,SpikeBlock))
{
w=instance_place(x,y,SpikeBlock)
if(w.solid)
{
sound_play("sndThud"); speed=0; move_outside_solid(180+direction,-1);
active=false;  cooldown=max_cool;
}
}


if(cooldown<=0) // cooldown
{
cooldown=0; active=true;
}
else{cooldown-=1}
