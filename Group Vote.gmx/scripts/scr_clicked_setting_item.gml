/// scr_clicked_setting_item()

if (creator == "Profile") {
    if (title == "New profile") {
        pro = instance_create(x,y,obj_get_input);
        pro.creator = "Profile";
        pro.action = "Add";
        scr_popup_values();
    }
}

else if (creator == "Display") {
    if (title == "Fullscreen") {
        global.fullscreen = !global.fullscreen;
    }
    else if (title == "Night mode") {
        global.night_mode = !global.night_mode;
        scr_change_room(rm_settings);
    }
    else if (title == "Halven bonus") {
        global.half_bonus = !global.half_bonus;
    }
    else if (title == "Ignore unvoted") {
        global.ignore_unvoted = !global.ignore_unvoted;
    }
}
