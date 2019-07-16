///scr_clicked_number()
if (creator == "Item") {
    if (title == "+") {
        value += 1;
    }
    if (title == "-") {
        value -= 1;
    }
}

else if (creator == "Vote") {
    scr_load_profiles();
    if (title == "+") {
        if (global.voter_amount < ds_list_size(profile)) {
            global.voter_amount += 1;
        }
    }
    if (title == "-") {
        if (global.voter_amount > 1) {
            global.voter_amount -= 1;
        }
    }
}
