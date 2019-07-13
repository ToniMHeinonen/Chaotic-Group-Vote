///scr_load_lists
lists = ds_list_create()
ini_open("lists.ini");
var str = ini_read_string("lists","0","");
ds_list_read(lists,str)
ini_close();
