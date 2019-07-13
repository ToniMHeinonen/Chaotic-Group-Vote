///scr_increase_popup
if (bgsize < 1) then bgsize += 0.10;
if (bgx < b_xcenter) then bgx += bgx100*10;
if (bgy < b_ycenter) then bgy += bgy100*10;

if (bgx > b_xcenter) then bgx += bgx100*10;
if (bgy > b_ycenter) then bgy += bgy100*10;

if (fade < 1) then fade += 0.05;

if (bgsize >= 1) && (bgx >= b_xcenter) && (bgy >= b_ycenter) && (fade >= 1) {
    ready = true;
}
