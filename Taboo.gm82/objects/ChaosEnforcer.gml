#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==0)
{

bag_x=ds_bag_create(); bag_y=ds_bag_create();
for(i=1;i<=11; i+=1){ds_bag_add(bag_x,96+60*i);ds_bag_add(bag_y,50*i);}


for(i=1;i<=11; i+=1)
{
place_x=ds_bag_grab(bag_x); place_y=ds_bag_grab(bag_y);
block=instance_create(place_x,place_y,ChaosBlock);
block.image_angle=random(360);
with(block)
{
if(place_meeting(x,y,SafeZone)){instance_destroy();}
}
repeat(2)
{
spike=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),SpikeU);
spike.image_angle=random(360);
with(spike){if(place_meeting(x,y,SafeZone)){instance_destroy()}}

}


}

ds_bag_destroy(bag_x); ds_bag_destroy(bag_y);
}
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active)
{
active=false;
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!active)
{
instance_destroy();
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field rule: number
