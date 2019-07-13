///scr_strip_round2_items
while (ds_list_size(name) > global.round2_items) {
    ds_list_delete(name,global.round2_items);
    ds_list_delete(bonus,global.round2_items);
    ds_list_delete(extra,global.round2_items);
    ds_list_delete(whole,global.round2_items);
    ds_list_delete(ignored,global.round2_items);
    ds_list_delete(group,global.round2_items);
}
