
//draw textbox
draw_sprite(ge_spr_box, 0, x, y);

//draw text
draw_set_font(ge_Font2);
text = "Great work out there, Six! You kicked some serious ass! With your victory, the balance of this war has been restored! We'll send in a support squad to secure the elevator, but your work is done. Time for you to head home. Oh, and the drinks are on me!"
draw_text_ext(x,y, text, stringHeight, boxWidth);