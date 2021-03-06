move = key_left + key_right;
hsp = move * MoveSpeed;

if move > 0 {
    sprite_index = sprNachRechts;
    image_xscale = 1;
} else if move < 0 {
    sprite_index = sprNachRechts;
    image_xscale = -1;
} else {
    sprite_index = sprSteht;
}

if (vsp < 10) vsp += grav;

if place_meeting(x, y+1, objBoden) {
    vsp = key_jump * -JumpSpeed
    if key_jump = 1 {
        audio_play_sound(sndJumpWeibchen, 10, false);
    }
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

if place_meeting(x, y, objGras) and hsp != 0 and vsp = 0 {    
    playWalkingSound();
} else {
    initializeWalkingSound();
}

if vsp != 0 {
    image_speed = 0;
} else {
    image_speed = AnimationSpeed;
}

y += vsp;
