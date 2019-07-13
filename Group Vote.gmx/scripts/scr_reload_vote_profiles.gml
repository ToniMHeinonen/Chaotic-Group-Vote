///scr_reload_vote_profiles
instance_destroy(obj_show_vote_profiles);
instance_destroy(obj_vote_profile);
instance_create(x,y,obj_show_vote_profiles);
instance_destroy();
