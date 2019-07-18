///scr_find_all_assets()
var i = 0;
var assets;
while (true) {
   var background = asset_get_index("bg_" + string(i));
   if (background_exists(background)) {
      assets[i] = background;
   }
   else {
      break;
   }
   i += 1;
}

return assets;
