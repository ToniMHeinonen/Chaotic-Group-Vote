///scr_reload_profiles
instance_destroy(obj_show_profiles);
scr_destroy_buttons(SAVED_PROFILE);
scr_destroy_buttons(SETTING_ITEM);
instance_create(x,y,obj_show_profiles);
global.popup = false;
instance_destroy();
