#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=sets the savedata to unclear state
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (savedatap("clear")) {
    savedatap("clear",false)
    autosave_asap()
    savedata_write()
}
