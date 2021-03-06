///scr_load_settings
ini_open("Settings.ini")
global.list_slot = ini_read_string("Settings","list_slot","")
global.max_points_round_1 = ini_read_real("Settings","max_points_round_1",7)
global.max_points_round_2 = ini_read_real("Settings","max_points_round_2",5)
global.max_peril_points = ini_read_real("Settings","max_peril_points",5)
global.full_add = ini_read_real("Settings","full_add",0)
global.sort_by = ini_read_string("Settings","sort_by","Whole")
global.sort_asc = ini_read_real("Settings","sort_asc",-1)
global.mouseOver_color = ini_read_real("Settings","mouseOver_color",c_orange)
global.selected_color = ini_read_real("Settings","selected_color",c_aqua)
global.night_mode = ini_read_real("Settings","night_mode",0)
global.fullscreen = ini_read_real("Settings","fullscreen",0)
global.half_bonus = ini_read_real("Settings", "half_bonus", 1);
global.ignore_unvoted = ini_read_real("Settings", "ignore_unvoted", 1);
ini_close();
