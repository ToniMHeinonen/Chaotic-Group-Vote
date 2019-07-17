///scr_clicked_vote_next_step()

//Start
if (obj_vote_master.state == "start") {
    obj_vote_master.next_step = true;
}

//Round 1 and 2
if (obj_vote_master.state == "round1") or (obj_vote_master.state == "round2") {
    //add voted points to whole
    for (var i = 0; i < ds_list_size(name); i++) {
        whole[| i] += global.voted_item[cur_voter,i];
    }
    scr_save_vote_items();
    //obj_vote_master handles what happens when vote_points reach -1;
    global.vote_points -= 1;
    instance_destroy();
}
