#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=50;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=80;
n=5; m=4;
if(BossC.phase_counter==1){n=4}
else if(BossC.phase_counter==2){n=3}
offset=random(360/n);
for(i=1; i<=n; i+=1)
{
 for(j=1; j<=m; j+=1)
 {
  w=instance_create_moving(x,y,BossBullet,j+1.5,offset+360*i/n+90*j/n);
  w.image_angle=w.direction;
  w.image_index=4;  w.image_speed=0;
 }
 }
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(BossC)){x=BossC.x; y=BossC.y;}
