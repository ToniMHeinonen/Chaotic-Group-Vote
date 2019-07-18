/// scr_clicked_menu()

if (title == "Vote") {
    if (global.list_slot == "") {
        with (obj_menu_master) {
            draw_warning = true;
            warning_text = "First select list from Show List";
            alarm[0] = 120;
        }
    } else if (ds_list_empty(obj_menu_master.profile)) {
        with (obj_menu_master) {
            draw_warning = true;
            warning_text = "First create a profile in Settings";
            alarm[0] = 120;
        }
    } else if (ds_list_size(obj_menu_master.name) < global.max_points_round_1) {
        with (obj_menu_master) {
            draw_warning = true;
            warning_text = "Add more items to list#(At least " + string(global.max_points_round_1) + " required!)";
            alarm[0] = 120;
        }
    } else {
        scr_change_room(rm_vote);
    }
}

else if (title == "Show list") {
    scr_change_room(rm_show_list);
}

else if (title == "Settings") {
    scr_change_room(rm_settings);
}

else if (title == "Exit") {
    scr_save_settings();
    game_end()
}
