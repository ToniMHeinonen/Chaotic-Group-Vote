///scr_load_items
name = ds_list_create()
ini_open("list "+global.list_slot+".ini");
var str = ini_read_string("name","0","");
ds_list_read(name,str)
bonus = ds_list_create()
var str = ini_read_string("bonus","0",0);
ds_list_read(bonus,str)
extra = ds_list_create()
var str = ini_read_string("extra","0",0);
ds_list_read(extra,str)
whole = ds_list_create()
var str = ini_read_string("whole","0",0);
ds_list_read(whole,str)
ignored = ds_list_create()
var str = ini_read_string("ignored","0",0);
ds_list_read(ignored,str)
group = ds_list_create()
var str = ini_read_string("group","0","");
ds_list_read(group,str)
ini_close();
