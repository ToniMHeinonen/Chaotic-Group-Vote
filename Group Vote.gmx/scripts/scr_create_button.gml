///scr_create_button(x, y, type, title, creator);
var xx = argument[0];
var yy = argument[1];
var type = argument[2];
var title = argument[3];
var creator = noone;
if (argument_count > 4)
    creator = argument[4];

var button = instance_create(xx, yy, obj_button_parent);
with (button) {
    button.type = type;
    button.title = title;
    button.creator = creator;
    scr_init_button_values();
}

return button;
