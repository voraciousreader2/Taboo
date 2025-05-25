//add_rule(number)
with(DialogueHandlerInteract)
{
if(totalMessages==0)
{number=argument0;
add_message()
add_parameter("image", sprBookOpen)
add_parameter("name","Rules")
add_parameter("message","Rule "+string(number)+": "+rules_list(number))

}
}
