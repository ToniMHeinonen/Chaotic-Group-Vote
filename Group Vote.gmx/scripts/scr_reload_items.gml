///scr_reload_items
instance_destroy(obj_show_list);
instance_destroy(obj_list_item);
instance_create(x,y,obj_show_list);
global.popup = false;
instance_destroy();
