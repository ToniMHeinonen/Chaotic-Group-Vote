///scr_sort_items
var store_whole = whole[| i];
var store_name = name[| i];
var store_bonus = bonus[| i];
var store_extra = extra[| i];
var store_ignored = ignored[| i];
var store_group = group[| i];
whole[| i] = whole[| i+1];
whole[| i+1] = store_whole;
name[| i] = name[| i+1];
name[| i+1] = store_name;
bonus[| i] = bonus[| i+1];
bonus[| i+1] = store_bonus;
extra[| i] = extra[| i+1];
extra[| i+1] = store_extra;
ignored[| i] = ignored[| i+1];
ignored[| i+1] = store_ignored;
group[| i] = group[| i+1];
group[| i+1] = store_group;
