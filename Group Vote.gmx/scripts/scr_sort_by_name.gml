///scr_sort_by_name
for (j = 0; j < ds_list_size(name)-1; j++) {
    for (i = 0; i < ds_list_size(name)-1; i++) {
        if (scr_compare_strings(name[| i], name[| i+1]) == global.sort_asc)  {
            scr_sort_items();
        }
    }
}
