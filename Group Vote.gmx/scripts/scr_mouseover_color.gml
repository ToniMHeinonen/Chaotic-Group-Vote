///scr_mouseover_color
if(position_meeting(mouse_x,mouse_y,id)) {
    image_blend = global.selection_color;
} else {
    image_blend = global.text_color;
}
