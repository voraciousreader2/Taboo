#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
coin_counter=0;
max_coin=5;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(coin_counter>=max_coin)
{sound_play("sndBlockChange"); instance_destroy()}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field max_coin: number
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();
//draw_text(x+11*image_xscale,y+9*image_yscale,max_coin-coin_counter)

//draw_text_transformed(x+11*image_xscale,y+9*image_yscale,max_coin-coin_counter,image_xscale,image_yscale,0)

draw_set2(1,1)
draw_text_transformed(x+16*image_xscale,y+16*image_yscale,max_coin-coin_counter,image_xscale,image_yscale,0)
draw_reset()
