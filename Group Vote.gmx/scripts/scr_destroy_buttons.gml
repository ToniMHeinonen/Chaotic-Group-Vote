///scr_destroy_buttons(type)
var destroyType = argument[0];
var amount = 0;

with (obj_button_parent) {
    if (type == destroyType) {
        instance_destroy();
        amount++;
    }
}

show_debug_message("destroyed " + string(amount) + " of type " + string(destroyType));
