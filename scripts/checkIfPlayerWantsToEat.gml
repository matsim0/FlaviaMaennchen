if key_down {
    CurrentTisch = instance_place(x, y, objTischMitStuhl)
    if CurrentTisch != noone {
        sprite_index = noone;
        with(CurrentTisch) {
            sprite_index = sprTischMitEssender;
        }
        return true;
    }
}
return false
