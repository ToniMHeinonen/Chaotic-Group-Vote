///scr_clicked_popup()

//  Item
if (creator == "Item") {
    if (title == "Delete") {
        global.delete = true;
        instance_destroy(obj_show_list);
    }
    if (title == "Ignore") {
        global.ignored = true;
        global.list_ignored[global.sel_pos] = !global.list_ignored[global.sel_pos];
        instance_destroy(obj_show_list);
    }
    if (title == "Rename") {
        pro = instance_create(x,y,obj_get_input);
        pro.creator = "Item";
        pro.action = "Rename";
        with (pro) {
            bgx = other.x;
            bgy = other.y;
            bgx100 = (b_xcenter-bgx)/100;
            bgy100 = (b_ycenter-bgy)/100;
        }
        global.popup = true;
    }
    if (title == "Restore") {
        global.restore = true;
        instance_destroy(obj_show_list);
    }
    if (title == "Drop") {
        global.drop = true;
        instance_destroy(obj_show_list);
    }
}

//  Profile
if (creator == "Profile") {
    if (title == "Rename") {
        pro = instance_create(x,y,obj_get_input);
        pro.creator = "Profile";
        pro.action = "Rename";
        with (pro) {
            bgx = other.x;
            bgy = other.y;
            bgx100 = (b_xcenter-bgx)/100;
            bgy100 = (b_ycenter-bgy)/100;
        }
    }
    if (title == "Delete") {
        scr_load_profiles();
        ds_list_delete(profile,global.sel_pos);
        scr_save_profiles();
        ds_list_destroy(profile);
        scr_reload_profiles();
    }
}

//  List
if (creator == "List") {
    if (title == "Delete") {
        scr_destroy_buttons(POPUP);
        obj_popup.draw_warning = true;
        obj_popup.warning_text = "Are you sure you want#to delete list " + global.sel_name + "?";
        scr_create_button(x, obj_popup.start_y+obj_popup.space*2, 
            POPUP, "No", creator);
        scr_create_button(x, obj_popup.start_y+obj_popup.space*4, 
            POPUP, "Yes", creator);
        draw_warning = true;
    }
    if (title == "Load") {
        global.list_slot = global.sel_name;
        global.update = false;
        global.peril = false;
        instance_destroy(obj_show_list);
    }
    if (title == "No") {
        instance_destroy(obj_show_list);
    }
    if (title == "Rename") {
        pro = instance_create(x,y,obj_get_input);
        pro.creator = "List";
        pro.action = "Rename";
        with (pro) {
            bgx = other.x;
            bgy = other.y;
            bgx100 = (b_xcenter-bgx)/100;
            bgy100 = (b_ycenter-bgy)/100;
        }
    }
    if (title == "Yes") {
        scr_load_lists();
        ds_list_delete(lists,global.sel_pos);
        if (file_exists("list "+global.sel_name+".ini")) then file_delete("list "+global.sel_name+".ini");
        if (file_exists("list "+global.sel_name+" peril.ini")) then file_delete("list "+global.sel_name+" peril.ini");
        if (global.sel_name == global.list_slot) then global.list_slot = "";
        scr_save_lists();
        ds_list_destroy(lists);
        instance_destroy(obj_show_list);
    }
}

//Vote - Exit
if (creator == "Vote") {
    if (title == "No") {
        global.popup = false;
    }
    if (title == "Yes") {
        scr_change_room(rm_menu);
    }
}
