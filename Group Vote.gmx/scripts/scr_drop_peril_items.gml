///scr_drop_peril_items
var save_size = ds_list_size(name);
peril_name = ds_list_create();
peril_bonus = ds_list_create();
peril_extra = ds_list_create();
peril_whole = ds_list_create();
peril_ignored = ds_list_create();
peril_group = ds_list_create();
for (var i=0; i < save_size; i++) {
    if (extra[| i] > global.max_peril_points) {
        //add to peril list
        ds_list_add(peril_name,name[| i]);
        ds_list_add(peril_bonus,bonus[| i]);
        ds_list_add(peril_extra,extra[| i]);
        ds_list_add(peril_whole,whole[| i]);
        ds_list_add(peril_ignored,ignored[| i]);
        ds_list_add(peril_group,group[| i]);
        //remove from list
        ds_list_delete(name,i)
        ds_list_delete(bonus,i)
        ds_list_delete(extra,i)
        ds_list_delete(whole,i)
        ds_list_delete(ignored,i)
        ds_list_delete(group,i)
        i -= 1;
    }
}
