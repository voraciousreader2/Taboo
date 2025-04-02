#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface=false
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead)
{
if(Player.bbox_bottom<=bbox_bottom && Player.vflip==1)
{Player.wet_feet=true}
else if(Player.vflip==-1 && Player.bbox_top>=bbox_top)
{Player.wet_feet=true}
else{Player.wet_feet=false}
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field surface: false - wavy water surface
//field depth: number

if (surface) {
    with (instance_create(x,y,WaterSurface)) {
        find=other.id
        construct()
    }
}
