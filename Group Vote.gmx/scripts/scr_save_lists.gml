///scr_save_lists
if (file_exists("lists.ini")) file_delete("lists.ini");
ini_open("lists.ini")
var str = ds_list_write(lists);
ini_write_string("lists","0",str)
ini_close();
