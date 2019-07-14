///scr_layer_control();
var disableSelected = false;
var blockOn = global.block;
var popupOn = global.popup;
switch (layer) {
    case LAYER_NORMAL: {
        if (!blockOn && !popupOn) {
            disableSelected = true;
        }
        break;
    }
    case LAYER_BLOCK_TOPIC: {
        if (!blockOn) {
            disableSelected = true;
        }
        break;
    }
    case LAYER_BLOCK_ITEM: {
        if (!popupOn) {
            disableSelected = true;
        }
        if (!blockOn) {
            instance_destroy();
        }
        break;
    }
    case LAYER_POPUP: {
        if (!popupOn) {
            instance_destroy();
        }
        break;
    }
}
    
if (disableSelected)
    selected = false;
