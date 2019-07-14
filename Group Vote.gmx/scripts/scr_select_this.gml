///scr_select_this(id, layer)
var obj = argument[0];
var layer = argument[1];

switch (layer) {
    case LAYER_NORMAL: {
        global.selectedNormal = obj;
        break;
    }
    case LAYER_BLOCK_TOPIC: {
        global.selectedBlock = obj;
        break;
    }
    case LAYER_BLOCK_ITEM: {
        global.selectedItem = obj;
        break;
    }
    case LAYER_POPUP: {
        global.selectedPopup = obj;
        break;
    }
}
