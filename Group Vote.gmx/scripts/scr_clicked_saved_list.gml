///scr_clicked_saved_list()

//create selections
global.sel_pos = position;
global.sel_name = title;
pro = instance_create(x,y,obj_popup);
pro.creator = "List";
scr_popup_values();
