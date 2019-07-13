///scr_save_peril_items
if (file_exists("list "+global.list_slot+" peril.ini")) file_delete("list "+global.list_slot+" peril.ini");
ini_open("list "+global.list_slot+" peril.ini")
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
