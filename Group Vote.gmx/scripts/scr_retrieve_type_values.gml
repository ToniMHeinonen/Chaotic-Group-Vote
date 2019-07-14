///scr_retrieve_type_values()
switch (type) {
    case MENU: {
        sprite_index = spr_box;
        break;
    }
    case SETTING_MENU: {
        sprite_index = spr_box;
        selectedOffBlock = true;
        break;
    }
    case POPUP: {
        font = fnt_small;
        destroyOffPopup = true;
        break;
    }
}
