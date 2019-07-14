///scr_destroy_buttons(type)
var type = argument[0];
for(var i=0; i<instance_number(obj_button_parent); i++) 
{
    var inst = instance_find(obj_button_parent, i);
    if (inst.type == type)
        instance_destroy();
}
