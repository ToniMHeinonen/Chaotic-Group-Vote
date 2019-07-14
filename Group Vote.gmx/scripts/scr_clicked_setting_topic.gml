/// scr_clicked_setting_topic()

if (title == "Profile") {
    global.profilex = x1+100;
    global.profiley = y-150;
    if (global.profiley < 50) then global.profiley = 50;
    instance_create(0,0,obj_show_profiles);
}

else if (title == "Display") {
    block_x = x1+100;
    block_y = y-150;
    if (block_y < 50) then block_y = 50;
    scr_create_button(block_x, block_y, SETTING_ITEM, "Fullscreen", "Display");
    scr_create_button(block_x, block_y+space, SETTING_ITEM, "Night mode", "Display");
}

if (title == "Exit") {
    scr_save_settings();
    scr_change_room(rm_menu);
}
