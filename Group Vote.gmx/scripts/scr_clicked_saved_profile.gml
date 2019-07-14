///scr_clicked_saved_profile()
global.sel_pos = position;
pro = instance_create(x,y,obj_popup);
pro.creator = "Profile";
scr_popup_values();
selected = true;
