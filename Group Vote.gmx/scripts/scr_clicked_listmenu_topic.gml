///scr_clicked_listmenu_topic()

///disable draw warning
obj_show_list.draw_warning = false;

///Add
if (title == "Add") {
    if (global.list_slot == "") { 
        obj_show_list.draw_warning = true;
        alarm[0] = 120;
    } else {
        scr_create_button(x,y+32, LISTMENU_ITEM, "Add one", "Add");
        scr_create_button(x,y+64, LISTMENU_ITEM, "Add many", "Add");
        if (global.full_add) then toggle_full_add = "On";
        else toggle_full_add = "Off";
        scr_create_button(x,y+96, LISTMENU_ITEM, "Add all values: " + toggle_full_add,
            "Add");
    }
}

///File
else if (title == "File") {
    var space = 32;
    scr_load_lists();
    
    var pro = scr_create_button(x,y+32, LISTMENU_ITEM, "New list", "File");
    pro.scroll = true;
    
    for(var i = 0; i<ds_list_size(lists); i++) {
        item = scr_create_button(x,y+64+space*i, SAVED_LIST, lists[| i]);
        item.position = i;
    }
    
    scr_save_lists();
    ds_list_destroy(lists);
}

///Save
else if (title = "Save") {
    instance_destroy(obj_show_list);
}

///Sort
else if (title == "Sort") {
    scr_create_button(x,y+32, LISTMENU_ITEM, "Sort by: " + global.sort_by, "Sort");
    
    if (global.sort_asc == -1) then toggle_sort_asc = "Descending";
    else toggle_sort_asc = "Ascending";
    scr_create_button(x,y+64, LISTMENU_ITEM, toggle_sort_asc, "Sort");
}

///Exit
else if (title == "Exit") {
    scr_save_settings();
    scr_change_room(rm_menu);
}

///Fallen
else if (title == "Fallen") {
    global.peril = !global.peril
    global.update = false;
    instance_destroy(obj_show_list);
}
