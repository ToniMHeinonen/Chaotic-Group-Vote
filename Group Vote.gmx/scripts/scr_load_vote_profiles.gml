///scr_load_vote_profiles
profile = ds_list_create()
ini_open("vote_profile.ini");
var str = ini_read_string("profile","0","");
ds_list_read(profile,str)
ini_close();
