
//draw textbox
draw_sprite(ge_spr_box, 0, x, y);

//draw text
draw_set_font(ge_Font2);
text = "Its good to finally meet you, Six. I'm Sender, but I guess you already knew that. You'll be piloting the V-96 ATLAN, the newest mecha developed by the UCC Defense Force. You know what a mecha is already, right? No? Well, its basically a robot that can be piloted. Think of like a tank with legs, or a Power Loader from that one movie. Anyways, I'll tell you more about the ATLAN once you're in the field. See ya!"
draw_text_ext(x,y, text, stringHeight, boxWidth);