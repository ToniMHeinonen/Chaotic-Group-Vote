///scr_update_items
for(var i = 0; i<ds_list_size(name); i++) {
    ds_list_replace(name,i,global.list_name[i])
    ds_list_replace(bonus,i,global.list_bonus[i])
    ds_list_replace(extra,i,global.list_extra[i])
    ds_list_replace(whole,i,global.list_whole[i])
    ds_list_replace(ignored,i,global.list_ignored[i])
    ds_list_replace(group,i,global.list_group[i])
}
