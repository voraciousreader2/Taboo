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
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==1)
{

for(i=0; i<=4; i+=1)
{
for(j=0; j<=2; j+=1)
{
place_x=112+128*i; place_y=144+128*j;
if(place_empty(place_x,place_y))
{
w=instance_create(place_x,place_y,choose(FieldU, FieldD));
w.image_xscale=2; w.image_yscale=2;
}
}
}

for(i=0; i<=3; i+=1)
{
for(j=0; j<=3; j+=1)
{
place_x=176+128*i; place_y=80+128*j;

if(place_empty(place_x,place_y))
{
w=instance_create(place_x,place_y,choose(FieldL, FieldR))
w.image_xscale=2; w.image_yscale=2;
}
}

}


}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 2
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==2)
{

bag_x=ds_bag_create(); bag_y=ds_bag_create();
for(i=1;i<=11; i+=1){ds_bag_add(bag_x,96+60*i);ds_bag_add(bag_y,50*i);}

repeat(11)
{
place_x=ds_bag_grab(bag_x)+random_range(-32,32);
place_y=ds_bag_grab(bag_y)+random_range(-32,32);

block1=instance_create(place_x,place_y,ChaosBlock);
block2=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),ChaosBlock);
with(block1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(block2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

field1=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),choose(FieldU,FieldD))
field2=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),choose(FieldL,FieldR))

with(field1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(field2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

}


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
