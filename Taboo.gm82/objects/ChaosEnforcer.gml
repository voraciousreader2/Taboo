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
arg0=rule 0: rotated spikes
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==0)
{

bag_x=ds_bag_create(); bag_y=ds_bag_create();
bag_x2=ds_bag_create(); bag_y2=ds_bag_create();
for(i=1;i<=16; i+=1)
{
ds_bag_add(bag_x,40+45*i);ds_bag_add(bag_y,35*i);
ds_bag_add(bag_x2,75+40*i);ds_bag_add(bag_y2,40*i+random_range(-32,32))
}


for(i=1;i<=16; i+=1)
{
place_x=ds_bag_grab(bag_x); place_y=ds_bag_grab(bag_y);
place_x2=ds_bag_grab(bag_x2); place_y2=ds_bag_grab(bag_y2);
block=instance_create(place_x,place_y,ChaosBlock);
block.image_angle=random(360);
with(block)
{
if(place_meeting(x,y,SafeZone)){instance_destroy();}
}
repeat(2)
{
spike1=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),SpikeU);
spike1.image_angle=random(360);
with(spike1){if(place_meeting(x,y,SafeZone)){instance_destroy()}}

spike2=instance_create(place_x2+random_range(-80,80),place_y2+random_range(-80,80),SpikeU);
spike2.image_angle=random(360);
with(spike2){if(place_meeting(x,y,SafeZone)){instance_destroy()}}


}


}

ds_bag_destroy(bag_x); ds_bag_destroy(bag_y);
ds_bag_destroy(bag_x2); ds_bag_destroy(bag_y2);
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 1: field maze
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
arg0=rule 2: fields and blocks
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==2)
{

bag_x=ds_bag_create(); bag_y=ds_bag_create();
bag_x2=ds_bag_create(); bag_y2=ds_bag_create();
bag_x3=ds_bag_create(); bag_y3=ds_bag_create();

for(i=1;i<=11; i+=1)
{
ds_bag_add(bag_x,96+60*i);ds_bag_add(bag_y,50*i);
ds_bag_add(bag_x2,64+60*i+random_range(-32,32));
ds_bag_add(bag_y2,50*i+random_range(-32,32));
ds_bag_add(bag_x3,32+60*i+random_range(-32,32));
ds_bag_add(bag_y3,50*i+random_range(-32,32));
}

repeat(11)
{
place_x=ds_bag_grab(bag_x)+random_range(-32,32);
place_y=ds_bag_grab(bag_y)+random_range(-32,32);

block1=instance_create(place_x,place_y,ChaosBlock);
block2=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),ChaosBlock);
with(block1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(block2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

field1=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),FieldU)
field2=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),FieldR)
field3=instance_create(ds_bag_grab(bag_x2),ds_bag_grab(bag_y2),FieldD)
field4=instance_create(ds_bag_grab(bag_x3),ds_bag_grab(bag_y3),FieldR)

with(field1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(field2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(field3){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(field4){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

}

ds_bag_destroy(bag_x); ds_bag_destroy(bag_y);
ds_bag_destroy(bag_x2); ds_bag_destroy(bag_y2);
ds_bag_destroy(bag_x3); ds_bag_destroy(bag_y3);

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 3: spikeblocks and killer crushers
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==3)
{

bag_x=ds_bag_create(); bag_y=ds_bag_create();
for(i=1;i<=11; i+=1){ds_bag_add(bag_x,60*i);ds_bag_add(bag_y,50*i);}

repeat(11)
{
place_x=ds_bag_grab(bag_x)+random_range(-32,32);
place_y=ds_bag_grab(bag_y)+random_range(-32,32);

block1=instance_create(place_x,place_y,SpikeBlock);
block2=instance_create(4*place_y/3+random_range(-80,80), 3*place_x/4+random_range(-80,80),SpikeBlock);
with(block1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(block2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

crusher1=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),CrusherK)
crusher2=instance_create(place_x+random_range(-80,80),place_y+random_range(-80,80),CrusherK)

with(crusher1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(crusher2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

}

ds_bag_destroy(bag_x); ds_bag_destroy(bag_y);

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 4: flip blocks and grav arrows
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==4)
{

bag_x1=ds_bag_create(); bag_y1=ds_bag_create();
bag_x2=ds_bag_create(); bag_y2=ds_bag_create();
bag_x3=ds_bag_create(); bag_y3=ds_bag_create();
bag_x4=ds_bag_create(); bag_y4=ds_bag_create();
bag_x5=ds_bag_create(); bag_y5=ds_bag_create();



for(i=1;i<=11; i+=1)
{
ds_bag_add(bag_x1,96+60*i+random_range(-32,32));ds_bag_add(bag_y1,50*i+random_range(-32,32));
ds_bag_add(bag_x2,64+60*i++random_range(-32,32));ds_bag_add(bag_y2,50*i+random_range(-32,32));
ds_bag_add(bag_x3,32+60*i++random_range(-32,32));ds_bag_add(bag_y3,50*i+random_range(-32,32));
ds_bag_add(bag_x4,96+60*i+random_range(-32,32));ds_bag_add(bag_y4,50*i+random_range(-32,32));
ds_bag_add(bag_x5,96+60*i+random_range(-32,32));ds_bag_add(bag_y5,50*i+random_range(-32,32));
}



repeat(11)
{

block=instance_create(ds_bag_grab(bag_x1),ds_bag_grab(bag_y1),FlipBlock);
gravU=instance_create(ds_bag_grab(bag_x2),ds_bag_grab(bag_y2),GravFlip);
gravD=instance_create(ds_bag_grab(bag_x3),ds_bag_grab(bag_y3),GravNormal);
killblock1=instance_create(ds_bag_grab(bag_x4),ds_bag_grab(bag_y4),KidBlockUp);
killblock2=instance_create(ds_bag_grab(bag_x5),ds_bag_grab(bag_y5),KidBlockDown);

with(block){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(gravU){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(gravD){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(killblock1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(killblock2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

}

ds_bag_destroy(bag_x1); ds_bag_destroy(bag_y1);
ds_bag_destroy(bag_x2); ds_bag_destroy(bag_y2);
ds_bag_destroy(bag_x3); ds_bag_destroy(bag_y3);
ds_bag_destroy(bag_x4); ds_bag_destroy(bag_y4);
ds_bag_destroy(bag_x5); ds_bag_destroy(bag_y5);

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 5: single jump
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==5)
{

bag_x1=ds_bag_create(); bag_y1=ds_bag_create();
bag_x2=ds_bag_create(); bag_y2=ds_bag_create();
bag_x3=ds_bag_create(); bag_y3=ds_bag_create();
bag_x4=ds_bag_create(); bag_y4=ds_bag_create();
bag_x5=ds_bag_create(); bag_y5=ds_bag_create();

for(i=1;i<=11; i+=1)
{
ds_bag_add(bag_x1,96+60*i+random_range(-32,32));ds_bag_add(bag_y1,50*i+random_range(-32,32));
ds_bag_add(bag_x2,64+60*i+random_range(-32,32));ds_bag_add(bag_y2,50*i+random_range(-32,32));
ds_bag_add(bag_x3,32+60*i+random_range(-32,32));ds_bag_add(bag_y3,50*i+random_range(-32,32));
ds_bag_add(bag_x4,96+60*i+random_range(-32,32));ds_bag_add(bag_y4,50*i+random_range(-32,32));
ds_bag_add(bag_x5,96+60*i+random_range(-32,32));ds_bag_add(bag_y5,50*i+random_range(-32,32));
}

repeat(11)
{

cblock=instance_create(ds_bag_grab(bag_x1),ds_bag_grab(bag_y1),ChaosBlock);
sblock=instance_create(ds_bag_grab(bag_x2),ds_bag_grab(bag_y2),SJumpBlock);
field1=instance_create(ds_bag_grab(bag_x3),ds_bag_grab(bag_y3),FieldSJ);
field2=instance_create(ds_bag_grab(bag_x4),ds_bag_grab(bag_y4),FieldSJ);
field3=instance_create(ds_bag_grab(bag_x5),ds_bag_grab(bag_y5),FieldSJ);

with(cblock){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(sblock){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(field1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(field3){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(field2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

}

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 6: coin blocks
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==6)
{

bag_x1=ds_bag_create(); bag_y1=ds_bag_create();
bag_x2=ds_bag_create(); bag_y2=ds_bag_create();
bag_x3=ds_bag_create(); bag_y3=ds_bag_create();
bag_x4=ds_bag_create(); bag_y4=ds_bag_create();
bag_x5=ds_bag_create(); bag_y5=ds_bag_create();


for(i=1;i<=11; i+=1)
{
ds_bag_add(bag_x1,96+60*i+random_range(-32,32));ds_bag_add(bag_y1,50*i+random_range(-32,32));
ds_bag_add(bag_x2,64+60*i++random_range(-32,32));ds_bag_add(bag_y2,50*i+random_range(-32,32));
ds_bag_add(bag_x3,32+60*i++random_range(-32,32));ds_bag_add(bag_y3,50*i+random_range(-32,32));
ds_bag_add(bag_x4,48+60*i+random_range(-32,32));ds_bag_add(bag_y4,50*i+random_range(-32,32));
ds_bag_add(bag_x5,80+60*i+random_range(-32,32));ds_bag_add(bag_y5,50*i+random_range(-32,32));
}


repeat(11)
{

block1=instance_create(ds_bag_grab(bag_x1),ds_bag_grab(bag_y1),CoinBlock);
block2=instance_create(ds_bag_grab(bag_x2),ds_bag_grab(bag_y2),CoinBlock);
coin1=instance_create(ds_bag_grab(bag_x3),ds_bag_grab(bag_y3),BlueCoin);
coin2=instance_create(ds_bag_grab(bag_x4),ds_bag_grab(bag_y4),BlueCoin);
coin3=instance_create(ds_bag_grab(bag_x5),ds_bag_grab(bag_y5),BlueCoin);

with(block1){max_coin=irandom_range(1,5);
if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(block2){max_coin=irandom_range(6,9);
if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(coin1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(coin2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(coin3){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

}

ds_bag_destroy(bag_x1); ds_bag_destroy(bag_y1);
ds_bag_destroy(bag_x2); ds_bag_destroy(bag_y2);
ds_bag_destroy(bag_x3); ds_bag_destroy(bag_y3);
ds_bag_destroy(bag_x4); ds_bag_destroy(bag_y4);
ds_bag_destroy(bag_x5); ds_bag_destroy(bag_y5);



}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 7: springs
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(rule==7)
{


bag_x1=ds_bag_create(); bag_y1=ds_bag_create();
bag_x2=ds_bag_create(); bag_y2=ds_bag_create();
bag_x3=ds_bag_create(); bag_y3=ds_bag_create();
bag_x4=ds_bag_create(); bag_y4=ds_bag_create();

for(i=1; i<=11; i+=1)
{
ds_bag_add(bag_x1,96+60*i+random_range(-32,32));ds_bag_add(bag_y1,50*i+random_range(-32,32));
ds_bag_add(bag_x2,64+60*i++random_range(-32,32));ds_bag_add(bag_y2,50*i+random_range(-32,32));
ds_bag_add(bag_x3,32+60*i++random_range(-32,32));ds_bag_add(bag_y3,50*i+random_range(-32,32));
ds_bag_add(bag_x4,70*i+random_range(-32,32));ds_bag_add(bag_y4,50*i+random_range(-32,32));
}

repeat(11)
{

spring1=instance_create(ds_bag_grab(bag_x1),ds_bag_grab(bag_y1),Spring);
spring2=instance_create(ds_bag_grab(bag_x2),ds_bag_grab(bag_y2),Spring);
place_x3=ds_bag_grab(bag_x3); place_y3=ds_bag_grab(bag_y3);
spike1U=instance_create(place_x3,place_y3,SpikeU);
spike1D=instance_create(place_x3,place_y3+32,SpikeD);
place_x4=ds_bag_grab(bag_x4); place_y4=ds_bag_grab(bag_y4);
spike2L=instance_create(place_x4,place_y4,SpikeL);
spike2R=instance_create(place_x4+32,place_y4,SpikeR);


with(spring1){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(spring2){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(spike1U){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(spike1D){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(spike2L){if(place_meeting(x,y,SafeZone)){instance_destroy();}}
with(spike2R){if(place_meeting(x,y,SafeZone)){instance_destroy();}}

}

ds_bag_destroy(bag_x1); ds_bag_destroy(bag_y1);
ds_bag_destroy(bag_x2); ds_bag_destroy(bag_y2);
ds_bag_destroy(bag_x3); ds_bag_destroy(bag_y3);
ds_bag_destroy(bag_x4); ds_bag_destroy(bag_y4);





}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=rule 8: waters + random rule
*/
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
