///scr_button_exists(type)
var checkType = argument[0];

with (obj_button_parent) {
    if (type == checkType) {
        return true;
    }
}

return false;
