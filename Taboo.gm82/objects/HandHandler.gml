#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=true; hand_counter=0;
bag_hands=ds_bag_create()
ds_bag_add(bag_hands,BlueAttack, GreenAttack, YellowAttack, RedAttack)
att1=ds_bag_grab(bag_hands);
att2=ds_bag_grab(bag_hands);
att3=ds_bag_grab(bag_hands);
att4=ds_bag_grab(bag_hands);

instance_create(80,336,ShootLeft)
instance_create(656,336,ShootRight)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active)
{
active=false;

instance_create(x,y,att1);
instance_create(x,y,att2);

with(HandL){image_index=1; iframes=false;}
with(HandR){image_index=1; iframes=false;}
}


if(instance_exists(HandL))
{

if(HandL.HP==4 && instance_exists(att1))
{
instance_destroy_id(att1)
instance_create(x,y,att3);
with(HandL){image_index=2;}
}

if(HandL.HP<=0 && instance_exists(att3) )
{
instance_destroy_id(att3);
hand_counter+=1
}

}

if(instance_exists(HandR))
{
if(HandR.HP==4 && instance_exists(att2))
{
instance_destroy_id(att2)
instance_create(x,y,att4);
with(HandR){image_index=2;}
}

if(HandR.HP<=0 && instance_exists(att4) )
{
instance_destroy_id(att4);
hand_counter+=1
}

}


if(hand_counter==2)
{
ds_bag_destroy(bag_hands)
with(BossCh){phase_counter+=1}
with(GoldenDiamond){instance_destroy()}
instance_destroy()
}
