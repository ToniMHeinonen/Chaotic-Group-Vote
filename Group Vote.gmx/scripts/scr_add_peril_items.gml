///scr_add_peril_items
for (var i=0; i < ds_list_size(peril_name); i++) {
    ds_list_add(name,peril_name[| i]);
    ds_list_add(bonus,peril_bonus[| i]);
    ds_list_add(extra,peril_extra[| i]);
    ds_list_add(whole,peril_whole[| i]);
    ds_list_add(ignored,peril_ignored[| i]);
    ds_list_add(group,peril_group[| i]);
}
ds_list_destroy(peril_name);
ds_list_destroy(peril_bonus);
ds_list_destroy(peril_extra);
ds_list_destroy(peril_whole);
ds_list_destroy(peril_ignored);
ds_list_destroy(peril_group);
