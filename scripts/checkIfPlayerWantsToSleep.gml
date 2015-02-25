if key_down {
    CurrentBett = instance_place(x, y, objBett)
    if CurrentBett != noone {
        sprite_index = noone;
        with(CurrentBett) {
            sprite_index = sprBettMitSchlafendem;
        }
        return true;
    }
}
return false
