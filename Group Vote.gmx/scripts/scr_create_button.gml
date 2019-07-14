///scr_create_button(object, x, y, title, creator);
var obj = argument[0];
var xx = argument[1];
var yy = argument[2];
var title = argument[3];
var creator = noone;
if (argument_count > 4)
    creator = argument[4];

var button = instance_create(xx, yy, obj);
with (button) {
    button.title = title;
    button.creator = creator;
}
