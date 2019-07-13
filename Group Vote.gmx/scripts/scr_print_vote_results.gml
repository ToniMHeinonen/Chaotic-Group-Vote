///scr_print_vote_results
//Get time and date
var myminute = date_get_minute(date_current_datetime());
var myhour = date_get_hour(date_current_datetime());
var myday = date_get_day(date_current_datetime());
var mymonth = date_get_month(date_current_datetime());
var myyear = date_get_year(date_current_datetime());

//Save time and date to variable (2000-12-31-13-42)
var file_name = string(myyear) + "-" + string(mymonth) + "-" + string(myday) + "-" +
     string(myhour) + "-" + string(myminute);

//Create new file using date
//(If someone manages to create within same minute, this will overwrite it)
ini_open(string(file_name) + ".ini");

//List positions from 1 to beyond
for (var i = array_length_1d(round2_items)-1; i >= 0; i--) {
    ini_write_string("Results", "Position: " + string(i+1), round2_items[i]);
}

ini_close();
