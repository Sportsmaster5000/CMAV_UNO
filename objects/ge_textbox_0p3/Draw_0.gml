
//draw textbox
draw_sprite(ge_spr_box2, 0, x, y);

//draw text
draw_set_font(ge_Font2);
text = "Six, we will be sending you on a special mission to infiltrate the Houston Space Elivator. The OB's have secured it pretty tight, so you'll have to fight your way to the top. We've also caught wind that they have been working on EXPERIMENTAL WEAPONS there. Now I'm not sure what they may be, so look sharp. The OB's wont be expecting us, so this mission is top secret. It will be dubbed 'Operation Gun Eater'. Good luck, try not to get yourself killed."
draw_text_ext(x,y, text, stringHeight, boxWidth);