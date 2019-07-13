///scr_restore_item
//Add info to variable and delete from peril list
scr_load_peril_items();
var i = global.sel_pos;

add_name = name[| i]
add_bonus = bonus[| i]
add_extra = extra[| i]
add_whole = whole[| i]
add_ignored = ignored[| i]
add_group = group[| i]

ds_list_delete(name,i);
ds_list_delete(bonus,i);
ds_list_delete(extra,i);
ds_list_delete(whole,i);
ds_list_delete(ignored,i);
ds_list_delete(group,i);

scr_save_peril_items();

//Add info to items list
scr_load_items();

ds_list_add(name,add_name);
ds_list_add(bonus,add_bonus);
ds_list_add(extra,add_extra);
ds_list_add(whole,add_whole);
ds_list_add(ignored,add_ignored);
ds_list_add(group,add_group);

scr_save_items();
scr_destroy_items();
