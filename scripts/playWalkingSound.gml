
if StatePlaySound {
    audio_play_sound(sndSchrittWeibchen, 10, false);
    StatePlaySound = false;
    Counter = 0;
} else {
    Counter += 1;
    if Counter > 20/MoveSpeed {
        StatePlaySound = true; 
    }
}
