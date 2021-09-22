var Player, Direction;
Player = argument0;
Direction = argument1;

with(Player){
    if(Direction = 'Up'){
        direction = 90;
    }
    else if(Direction = 'Down'){
        direction = 270;
    }
    else if(Direction = 'Left'){
        direction = 180;
    }
    else if(Direction = 'Right'){
        direction = 0;
    }
}