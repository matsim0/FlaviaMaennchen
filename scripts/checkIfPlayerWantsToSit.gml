if key_down {
    CurrentStuhl = instance_place(x, y, objStuhl)
    if CurrentStuhl != noone {
        sprite_index = noone;
        with(CurrentStuhl) {
            sprite_index = sprSitztAufStuhl;
        }
        return true;
    }
}
return false
