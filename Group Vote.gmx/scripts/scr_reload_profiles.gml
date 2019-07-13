///scr_reload_profiles
instance_destroy(obj_show_profiles);
instance_destroy(obj_list_profile);
instance_destroy(obj_settings_button);
instance_create(x,y,obj_show_profiles);
global.popup = false;
instance_destroy();
