//This function clears all effects from tiles
//It sets all tiles to blocked and stops them
//from glowing.

with ( objCell ){ //resets the cells and turns off the glow.
            Reachable = false;
            Attackable = false;
            solid = true;
            Parent = noone;
            image_speed = 0;
            image_index = 0;
            visible = false;
}
    