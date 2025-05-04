#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/6
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_volume("sndCoin",0.5)
sound_play("sndCoin");
with(CoinBlock)
{coin_counter+=1}
instance_destroy()
