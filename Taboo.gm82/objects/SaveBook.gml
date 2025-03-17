#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/4; active=false; saved=false

vflip=1
save=0
angle=0

name=room_get_name(room)+"@"+string(round(x))+"x"+string(round(y))
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
saved=false; image_index=0
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!active && image_index>11){image_index=0}
if(!place_meeting(x,y,Player)){active=false}
event_inherited()
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!active)
{
active=true;}
if(active && image_index>24)
{if(saved){image_index=26} else {image_index=16}}
if (key_shoot(vi_pressed)&& !other.dead && vflip=other.vflip) {
    savedata_save(false,name)
    sound_play("sndSaveVoracious")
    image_index=26; alarm[0]=50; saved=true
    if (global.centered_saving) {
        savedatap("x",x+17)
        if (global.save_valign && settings("valign")) savedatap("y",y+16+7*Player.vflip)
        else savedatap("y",floor(y+16+7*Player.vflip))
}
}
#define Trigger_Draw End
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
