//pick random cell that doesnt have a guy on it
//with cell if (reachable) && (no guy on it)
//store in enemy tile list
//pick random number between 1 and (ammount of possible tiles), move to that location
//if no tiles, stay put

var Character;
Character = argument0;

Character.TargetArray[0] = 0;
Character.NumberOfTargets = 0;

with(objCell){
    if((Reachable)&&(instance_position(x,y,objGuy) = noone)){
        Add_To_TargetList(Character);
    }
}

//Now that we have a list of possible tile locations,
//pick one at random and go there
if(Character.NumberOfTargets = 0){
    return instance_position(Character.x,Character.y,objCell)
}
else{
    return Character.TargetArray[floor(random_range(0,Character.NumberOfTargets))];
}