/// draw_text_outline(x, y, string, font)

var xx = argument0;
var yy = argument1;
var s = argument2;
var font = argument3;
var outline;
if (font == fnt_menu)
    outline = fnt_menu_outline;
else if (font == fnt_small)
    outline = fnt_small_outline;

// Draw outline
draw_set_color(c_black);
draw_set_font(outline);
draw_text(xx, yy, s);

// Draw text
draw_set_color(c_white);
draw_set_font(font);
draw_text(xx,yy,s);
