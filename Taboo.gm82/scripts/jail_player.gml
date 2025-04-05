if(!Player.dead && !instance_exists(MiniCage))
{
Player.jailed=true;
instance_create(Player.x,Player.y+Player.vspeed,MiniCage);
 sound_play("sndJail"); active=false
}
