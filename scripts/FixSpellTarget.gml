//Fixes a slight issue which I overlooked at the time of spell implementation
//This might be removed if I eventually fix spells
//Basically, it inverts the target for spells so that enemies dont target
//the wrong character.
var Target, GuyType;
Target = argument0;
GuyType = argument1;

if(GuyType = 'player'){//keep the selection the same for players
    return Target;
}
else{//invert target if enemy
    if(Target = 1){
        return 2;
    }
    else if(Target = 2){
        return 1;
    }
    else{// if 3, it means both are targeted so just return 
        return 3;
    }
}