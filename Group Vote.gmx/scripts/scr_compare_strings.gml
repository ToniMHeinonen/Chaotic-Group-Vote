///scr_compare_strings(first string, second string)
//argument[0] is the first string
//argument[1] is the second string

//return 1 if first greater than second
//return -1 if first less than second
//return 0 if equal

var len1 = string_length(argument[0]);
var len2 = string_length(argument[1]);
if (len1 < len2) {
    var len = len1;
} else {
    var len = len2;
}

for (var i = 1; i <= len; i++) {
    var uni1 = string_ord_at(argument[0],i);
    var uni2 = string_ord_at(argument[1],i);
    
    //Make small and capital characters equal
    if (uni1 > 64) && (uni1 < 91) then uni1 += 32;
    if (uni2 > 64) && (uni2 < 91) then uni2 += 32;
    
    var compare = scr_compare_reals(uni1,uni2);
    
    if compare != 0 {
        return compare;
    }
}

if (len1 < len2) {
    return -1;
} else if (len1 > len2) {
    return 1;
} else {
    return 0;
}
