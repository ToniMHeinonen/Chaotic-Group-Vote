///scr_skip_ignored_items
var save_size = ds_list_size(name);
for (var i=0; i < save_size; i++) {
    if (ignored[| i]) {
        ds_list_delete(name,i)
        ds_list_delete(bonus,i)
        ds_list_delete(extra,i)
        ds_list_delete(whole,i)
        ds_list_delete(ignored,i)
        ds_list_delete(group,i)
        i -= 1;
    }
}
