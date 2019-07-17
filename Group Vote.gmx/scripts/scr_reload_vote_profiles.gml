///scr_reload_vote_profiles
instance_destroy(obj_show_vote_profiles);
scr_destroy_buttons(VOTE_PROFILE);
instance_create(x,y,obj_show_vote_profiles);
instance_destroy();
