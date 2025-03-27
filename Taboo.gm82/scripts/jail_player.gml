if(!Player.dead && !instance_exists(MiniCage))
{
instance_create(Player.x,Player.y+Player.vspeed,MiniCage);
 sound_play("sndJail"); active=false
}
