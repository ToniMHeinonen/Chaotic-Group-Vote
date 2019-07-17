///scr_clicked_listmenu_item()

///Add
if (creator == "Add") {
    //Add one item
    if (title == "Add one") {
        pro = instance_create(room_width/2,room_height/2,obj_get_input);
        pro.add_one = true;
        pro.creator = "Item";
        pro.action = "Add";
        scr_popup_values();
        scr_destroy_buttons(LISTMENU_ITEM);
    }
    ///Add many items
    if (title == "Add many") {
        pro = instance_create(room_width/2,room_height/2,obj_get_input);
        pro.add_one = false;
        pro.creator = "Item";
        pro.action = "Add";
        scr_popup_values();
        scr_destroy_buttons(LISTMENU_ITEM);
    }
    ///Toggle full add
    if (title == "Add all values: On") {
        global.full_add = false;
        title = "Add all values: Off"
    } else if (title == "Add all values: Off") {
        global.full_add = true;
        title = "Add all values: On"
    }
}

///File
else if (creator == "File") {
    if (title == "New list") {
        pro = instance_create(x,y,obj_get_input);
        pro.creator = "List";
        pro.action = "Add";
        scr_popup_values();
    }
}

///Sort
else if (creator == "Sort") {
    //Change sorting style
    if (title == "Sort by: " + global.sort_by) {
        switch (global.sort_by) {
            case "Name": global.sort_by = "Bonus"; break;
            case "Bonus": global.sort_by = "Peril"; break;
            case "Peril": global.sort_by = "Whole"; break;
            case "Whole": global.sort_by = "Name"; break;
        }
        title = "Sort by: " + global.sort_by;
        global.restart = false;
        instance_destroy(obj_show_list);
    }
    ///Sort by descending
    if (title == "Ascending") {
        global.sort_asc = -1;
        title = "Descending";
        global.restart = false;
        instance_destroy(obj_show_list);
    }
    ///Sort by ascending
    else if (title == "Descending") {
        global.sort_asc = 1;
        title = "Ascending";
        global.restart = false;
        instance_destroy(obj_show_list);
    }
}
