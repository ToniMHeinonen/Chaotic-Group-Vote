///scr_clicked_vote_profile()

//select
global.voter_name[global.voter] = name;
global.voter += 1;
//delete selection
scr_load_vote_profiles();
ds_list_delete(profile,position);
scr_save_vote_profiles();
ds_list_destroy(profile);
if (global.voter <= global.voter_amount) {
    scr_reload_vote_profiles();
} else {
    instance_destroy(obj_show_vote_profiles);
    scr_destroy_buttons(VOTE_PROFILE);
    instance_destroy();
}
