///scr_clicked_vote_item()

//add points
if (!global.clicked[position]) && (global.vote_points > 0) {
    global.clicked[position] = true;
    global.voted_item[global.voter,position] += global.vote_points;
    name = string(global.vote_points) + " " + name;
    global.vote_points -= 1;
    if (global.vote_points == 0) {
        scr_create_button(global.vote_next_x,global.vote_next_y, VOTE_NEXT_STEP,
        "Next step");
    }
    if (!instance_exists(obj_vote_previous_step)) {
        instance_create(global.vote_prev_x,global.vote_prev_y,obj_vote_previous_step);
    }
}
