///scr_init_button_values()
switch (type) {
    case MENU: {
        sprite_index = spr_box;
        layer = LAYER_NORMAL;
        font = fnt_menu;
        scrollable = false;
        hAlign = fa_center;
        script = scr_clicked_menu;
        break;
    }
    case SETTING_TOPIC: {
        sprite_index = spr_box;
        layer = LAYER_BLOCK_TOPIC;
        font = fnt_menu;
        scrollable = false;
        hAlign = fa_center;
        script = scr_clicked_setting_topic;
        // specific
        space = 32;
        x1 = x+150;
        x2 = x+350;
        y1 = y-200;
        y2 = y+200;
        break;
    }
    case SETTING_ITEM: {
        sprite_index = spr_wide_listmenu;
        layer = LAYER_BLOCK_ITEM;
        font = fnt_small;
        scrollable = false;
        hAlign = fa_center;
        script = scr_clicked_setting_item;
        break;
    }
    case SAVED_PROFILE: {
        sprite_index = spr_listmenu;
        layer = LAYER_BLOCK_ITEM;
        font = fnt_small;
        scrollable = true;
        hAlign = fa_center;
        script = scr_clicked_saved_profile;
        // Specific
        drawName = true;
        break;
    }
    case POPUP: {
        sprite_index = spr_wide_listmenu;
        layer = LAYER_POPUP;
        font = fnt_menu;
        scrollable = false;
        hAlign = fa_center;
        script = scr_clicked_popup;
        // Specific
        depth = -101;
        break;
    }
    case POPUP_CLOSE: {
        sprite_index = spr_close;
        layer = LAYER_POPUP;
        font = fnt_menu;
        scrollable = false;
        hAlign = fa_center;
        script = scr_clicked_popup_close;
        // Specific
        depth = -101;
        break;
    }
    case NUMBER: {
        sprite_index = spr_small_plus_minus;
        layer = LAYER_NORMAL;
        font = fnt_small;
        scrollable = false;
        hAlign = fa_center;
        script = scr_clicked_number;
        // Specific
        value = 0;
        break;
    }
    case LISTMENU_TOPIC: {
        sprite_index = spr_listmenu;
        layer = LAYER_BLOCK_TOPIC;
        font = fnt_menu;
        scrollable = false;
        hAlign = fa_center;
        script = scr_clicked_listmenu_topic;
        // Specific
        depth = -50;
        break;
    }
    case LISTMENU_ITEM: {
        sprite_index = spr_wide_listmenu;
        layer = LAYER_BLOCK_ITEM;
        font = fnt_small;
        scrollable = false;
        hAlign = fa_center;
        script = scr_clicked_listmenu_item;
        // Specific
        depth = -55;
        break;
    }
    case SAVED_LIST: {
        sprite_index = spr_wide_listmenu;
        layer = LAYER_BLOCK_ITEM;
        font = fnt_small;
        scrollable = true;
        hAlign = fa_center;
        script = scr_clicked_saved_list;
        // Specific
        depth = -55;
        position = 0;
        break;
    }
    case LIST_ITEM: {
        sprite_index = spr_list_item;
        layer = LAYER_NORMAL;
        font = fnt_small;
        scrollable = false;
        hAlign = fa_left;
        script = scr_clicked_list_item;
        break;
    }
}
