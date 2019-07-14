///scr_save_settings
if (file_exists("Settings.ini")) then file_delete("Settings.ini");
ini_open("Settings.ini")
ini_write_string("Settings","list_slot",global.list_slot);
ini_write_real("Settings","max_points_round_1",global.max_points_round_1);
ini_write_real("Settings","max_points_round_2",global.max_points_round_2);
ini_write_real("Settings","max_peril_points",global.max_peril_points);
ini_write_real("Settings","full_add",global.full_add);
ini_write_string("Settings","sort_by",global.sort_by);
ini_write_real("Settings","sort_asc",global.sort_asc);
ini_write_real("Settings","mouseOver_color",global.mouseOver_color);
ini_write_real("Settings","selected_color",global.selected_color);
ini_write_real("Settings","night_mode",global.night_mode);
ini_write_real("Settings","fullscreen",global.fullscreen);
ini_close();
