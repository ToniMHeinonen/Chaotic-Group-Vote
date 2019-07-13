///scr_scroll_control
//Scroll up
if (mouse_wheel_down()) {
    motion_add(90,5);
}
//Scroll down
if (mouse_wheel_up()) {
    motion_add(270,5);
}
//Slowdown
if (speed > 0) then speed -= 1;
