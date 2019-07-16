///scr_find_all_clicked_buttons()
var result = noone;
with (obj_button_parent) {
    if (mouseOver) {
        result[array_length_1d(result)] = id;
    }
}
return result;
