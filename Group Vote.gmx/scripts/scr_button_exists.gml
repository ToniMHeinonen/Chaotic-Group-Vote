///scr_button_exists(type, title)
var checkType = argument[0];
var checkTitle = noone;
if (argument_count > 1)
    checkTitle = argument[1];

with (obj_button_parent) {
    if (checkTitle == noone) {
        if (type == checkType) {
            return true;
        }
    } else {
        if (type == checkType && title == checkTitle) {
            return true;
        }
    }
}

return false;
