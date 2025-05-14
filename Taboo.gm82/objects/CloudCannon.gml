#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t=0; image_speed=1/10
dir=0;
length=480; //length of interval
cycle=160; //frames per cycle
x0=x; y0=y;

alarm[0]=7;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=7;
w=instance_create(x,y,BulletTear);

k= 3*x/16+150;

w.direction=random_range(k,k+90)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (t>=cycle)
{t=0;}

x=x0+lengthdir_x(length,direction)*(1-cos(2*pi*t/cycle))/2;
y=y0+lengthdir_y(length,direction)*(1-cos(2*pi*t/cycle))/2;
t=t+1;
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field dir: number

direction=dir;
