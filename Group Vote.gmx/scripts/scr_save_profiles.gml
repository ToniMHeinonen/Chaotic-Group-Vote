///scr_save_profiles
if (file_exists("profile.ini")) file_delete("profile.ini");
ini_open("profile.ini")
var str = ds_list_write(profile);
ini_write_string("profile","0",str)
ini_close();
