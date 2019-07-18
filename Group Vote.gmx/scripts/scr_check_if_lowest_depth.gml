///scr_check_if_lowest_depth(id)
// Retrieve all the clicked buttons
var inst = argument[0];
var clickedButtons = scr_find_all_clicked_buttons();

// show_debug_message("length " + string(array_length_1d(clickedButtons)));
// how to repeat bug: go to vote and horizontally click fast all the items
// Weird bug with Gamemaker, this should not have to be checked
if (array_length_1d(clickedButtons) == 0) {
    return false;
}

// Order then by lowest depth
while (true) {
    var lowestFound = true;
    
    for (var i = 0; i < array_length_1d(clickedButtons) - 1; i++) {
        var cur = clickedButtons[i];
        var next = clickedButtons[i+1];
        if (cur.depth > next.depth) {
            clickedButtons[i] = next;
            clickedButton[i+1] = cur;
            lowestFound = false;
        }
    }
    
    if (lowestFound) {
        break;
    }
}

// If instance calling this script is the lowest, return true
if (clickedButtons[0] == inst) {
    return true;
} else {
    return false;
}
