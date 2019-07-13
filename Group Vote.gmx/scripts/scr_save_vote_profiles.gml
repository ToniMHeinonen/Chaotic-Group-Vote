///scr_save_vote_profiles
if (file_exists("vote_profile.ini")) file_delete("vote_profile.ini");
ini_open("vote_profile.ini")
var str = ds_list_write(profile);
ini_write_string("profile","0",str)
ini_close();
