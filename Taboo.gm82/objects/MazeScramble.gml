#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
rand=choose(1,2,3,4)

switch (rand)
{
    case 1:
    move_player(656,496,true); with(Warp){x=128; y=96;}
    w1=instance_create(624,400,FieldU); w1.image_xscale=2; w1.image_yscale=2;
    w2=instance_create(560,464,FieldL); w2.image_xscale=2; w2.image_yscale=2;
    w3=instance_create(176,80,FieldL); w3.image_xscale=2; w3.image_yscale=2;
    w4=instance_create(112,144,FieldU); w4.image_xscale=2; w4.image_yscale=2;
    break;

    case 2:
    move_player(656,112,true); flip_player(-1);
    with(Warp){x=128; y=480;}
    w1=instance_create(624,144,FieldD); w1.image_xscale=2; w1.image_yscale=2;
    w2=instance_create(560,80,FieldL); w2.image_xscale=2; w2.image_yscale=2;
    w3=instance_create(176,464,FieldL); w3.image_xscale=2; w3.image_yscale=2;
    w4=instance_create(112,400,FieldD); w4.image_xscale=2; w4.image_yscale=2;
    break;

    case 3:
    move_player(144,112,true); flip_player(-1);
    with(Warp){x=640; y=480;}
    w1=instance_create(624,400,FieldD); w1.image_xscale=2; w1.image_yscale=2;
    w2=instance_create(560,464,FieldR); w2.image_xscale=2; w2.image_yscale=2;
    w3=instance_create(176,80,FieldR); w3.image_xscale=2; w3.image_yscale=2;
    w4=instance_create(112,144,FieldD); w4.image_xscale=2; w4.image_yscale=2;
    break;

    case 4:
    move_player(144,496,true); with(Warp){x=640; y=96;}
    w1=instance_create(624,144,FieldU); w1.image_xscale=2; w1.image_yscale=2;
    w2=instance_create(560,80,FieldR); w2.image_xscale=2; w2.image_yscale=2;
    w3=instance_create(176,464,FieldR); w3.image_xscale=2; w3.image_yscale=2;
    w4=instance_create(112,400,FieldU); w4.image_xscale=2; w4.image_yscale=2;

    break;

}
