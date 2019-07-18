///scr_clicked_vote_finish()

//End and save
//take surviving items to array
scr_load_vote_items();
for (var i = 0; i < ds_list_size(name); i++) {
    round2_items[i] = name[| i];
}

//Save vote results to text file to read later
scr_print_vote_results();

//use that array to add +1 bonus to all round 2 items and +1 extra to others
scr_load_items();
for (var i = 0; i < ds_list_size(name); i++) {
    found = false;
    for (var j = 0; j < array_length_1d(round2_items); j++) {
        if (scr_compare_strings(name[| i], round2_items[j]) == 0) {
            found = true;
        }
    }
    if (found) then bonus[| i] += 1;
    else {
        if (!ignored[| i]) then extra[| i] += 1;
    }
}
scr_drop_peril_items();
scr_save_items();
scr_load_peril_items();
scr_add_peril_items();
scr_save_peril_items();

scr_change_room(rm_menu);
