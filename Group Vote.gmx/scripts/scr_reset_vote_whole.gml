///scr_reset_vote_whole
for (var i = 0; i < ds_list_size(name); i++) {
    for (var j = 1; j <= global.voter_amount; j++) {
        whole[| i] = bonus[| i] + extra[| i];
    }
} 
