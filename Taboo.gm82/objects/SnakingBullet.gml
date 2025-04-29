#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//image_blend=c_green;
image_speed=0; killer=true;

t=0;
direction=0;
length=96; //length of interval
cycle=96; //frames per cycle
x0=x; y0=y;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (t>=cycle)
{t=0; x0=x; y0=y}

x=x0+cos(degtorad(-direction))*length*(1-cos(pi*t/cycle))/2;
y=y0+sin(degtorad(-direction))*length*(1-cos(pi*t/cycle))/2;
t=t+1;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(killer){kill_player()}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
