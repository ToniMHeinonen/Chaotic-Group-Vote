///scr_check_if_selected(id, layer)
var obj = argument[0];
var layer = argument[1];

switch (layer) {
    case LAYER_NORMAL: {
        if (global.selectedNormal == obj)
            return true;
        break;
    }
    case LAYER_BLOCK_TOPIC: {
        if (global.selectedBlock == obj)
            return true;
        break;
    }
    case LAYER_BLOCK_ITEM: {
        if (global.selectedItem == obj)
            return true;
        break;
    }
    case LAYER_POPUP: {
        if (global.selectedPopup == obj)
            return true;
        break;
    }
}

return false;
