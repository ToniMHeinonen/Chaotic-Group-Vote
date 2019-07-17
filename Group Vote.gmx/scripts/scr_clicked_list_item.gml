///scr_clicked_list_item()

//create selections
global.sel_pos = position;
pro = instance_create(x,y,obj_popup);
pro.creator = "Item";
scr_popup_values();
