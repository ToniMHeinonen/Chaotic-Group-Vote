///scr_save_vote_items
if (file_exists("vote_list.ini")) file_delete("vote_list.ini");
ini_open("vote_list.ini")
var str = ds_list_write(name);
ini_write_string("name","0",str)
var str = ds_list_write(bonus);
ini_write_string("bonus","0",str)
var str = ds_list_write(extra);
ini_write_string("extra","0",str)
var str = ds_list_write(whole);
ini_write_string("whole","0",str)
var str = ds_list_write(ignored);
ini_write_string("ignored","0",str)
var str = ds_list_write(group);
ini_write_string("group","0",str)
ini_close();
