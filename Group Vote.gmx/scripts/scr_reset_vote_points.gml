///scr_reset_vote_points
for (var i = 0; i < ds_list_size(name); i++) {
    for (var j = 1; j <= global.voter_amount; j++) {
        global.voted_item[j,i] = 0;
    }
} 
