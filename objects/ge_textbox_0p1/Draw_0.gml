
//draw textbox
draw_sprite(ge_spr_box, 0, x, y);

//draw text
draw_set_font(ge_Font2);
text = "At ease, soldier! Now, as you know, North America has been divided between two warring nations for decades now: The United Coalition of Cities in the west, and The Olive's Branch in the east. Recently, our war has reached a stalemate in the midwest. However, The Olive's Branch has repaired the old space elevator in Houston, formerly Texas. With this base, they will be able to send units into space. Our midwestern blockade will mean nothing if they can attack us from the sky. We will be sending you in on a special mission to dissable the elevator. Let me introduce you to Sender, your mechanic."
draw_text_ext(x,y, text, stringHeight, boxWidth);