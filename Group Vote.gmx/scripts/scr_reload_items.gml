///scr_reload_items
instance_destroy(obj_show_list);
scr_destroy_buttons(LIST_ITEM);
instance_create(x,y,obj_show_list);
global.popup = false;
instance_destroy();
