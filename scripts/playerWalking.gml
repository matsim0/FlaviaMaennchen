move = key_left + key_right;
hsp = move * movespeed;

if move > 0 {
    sprite_index = sprNachRechts;
} else if move < 0 {
    sprite_index = sprNachLinks;
} else {
    sprite_index = sprSteht;
}

if (vsp < 10) vsp += grav;

if place_meeting(x, y+1, objBoden) {
    vsp = key_jump * -jumpspeed
}

if place_meeting(x+hsp, y, objBoden) {
    while !place_meeting(x + sign(hsp), y, objBoden) {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

if place_meeting(x, y+vsp, objBoden) {
    while !place_meeting(x, y+sign(vsp), objBoden) {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;

