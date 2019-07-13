///scr_scroll_control_horizontal
//Scroll up
if (mouse_wheel_down()) {
    motion_add(180,5);
}
//Scroll down
if (mouse_wheel_up()) {
    motion_add(0,5);
}
//Slowdown
if (speed > 0) then speed -= 1;
