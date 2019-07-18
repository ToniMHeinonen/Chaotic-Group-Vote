///scr_clicked_vote_previous_step()

//remove points
global.vote_points += 1;
for (var i = 0; i < ds_list_size(name); i++) {
    if (global.voted_item[global.voter,i] == global.vote_points) {
        global.voted_item[global.voter,i] = 0;
        global.clicked[i] = false;
    }
}
