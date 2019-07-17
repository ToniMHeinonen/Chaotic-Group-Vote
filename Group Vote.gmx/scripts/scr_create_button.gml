///scr_create_button(x, y, type, title, creator, object);
var xx = argument[0];
var yy = argument[1];
var type = argument[2];
var title = argument[3];
var creator = noone;
if (argument_count > 4)
    creator = argument[4];
// Mainly used for list item
var object = obj_button_parent;
if (argument_count > 5)
    object = argument[5];

var button = instance_create(xx, yy, object);
with (button) {
    button.type = type;
    button.title = title;
    button.creator = creator;
    scr_init_button_values();
}

return button;
