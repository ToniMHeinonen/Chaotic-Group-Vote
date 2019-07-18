///scr_clicked_vote_exit()

///Popup exit
if (!global.popup) {
    pro = instance_create(x,y,obj_popup);
    pro.creator = "Vote";
    scr_popup_values();
}
