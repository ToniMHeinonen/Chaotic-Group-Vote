///scr_clicked_results_next_step()

//round 2
scr_load_vote_items();
scr_reset_vote_points();
scr_reset_vote_whole();
scr_strip_round2_items();
scr_save_vote_items();
obj_vote_master.state = "round2";
instance_destroy(obj_show_vote_results);
scr_destroy_buttons(RESULTS_ITEM);
instance_create(x,y,obj_show_vote_list);
instance_destroy();
