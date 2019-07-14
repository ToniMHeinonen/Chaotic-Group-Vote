///scr_layer_control_pressed();
var blockOn = global.block;
var popupOn = global.popup;
enableBlock = false;
enablePopup = false;

// Use buttons, enable block and popup there
alarm[0] = 2;

switch (layer) {
    case LAYER_NORMAL: {
        global.block = false;
        global.popup = false;
        break;
    }
    case LAYER_BLOCK_TOPIC: {
        global.block = false;
        global.popup = false;
        enableBlock = true;
        break;
    }
    case LAYER_BLOCK_ITEM: {
        global.popup = false;
        break;
    }
    case LAYER_POPUP: {
        enablePopup = true;
        break;
    }
}
