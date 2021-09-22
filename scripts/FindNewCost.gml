//argument 0 = x
//argument 1 = y
//argument 2 = PlayerType

var x1, y1, UnitType, LandType, Blocked, NewCost, CurrentCharacter, Overwrite;

x1 = argument0;
y1 = argument1;
CurrentCharacter = argument2;
UnitType = CurrentCharacter.MovementType;
LandType = argument3;
Overwrite = argument4;

if(CurrentCharacter.GuyType = 'player'){
    Blocked = instance_position(x1,y1,objEnemy);
}
else if(CurrentCharacter.GuyType = 'enemy'){
    Blocked = instance_position(x1,y1,objPlayer);
}
else{//Default action in case some idiot forgets to create a new case...
    Blocked = instance_position(x1,y1,objPlayer);
}



switch (UnitType){
case 'human':
    switch(LandType){
    
    case 'water':
    NewCost = 0;
    break;
    
    case 'open':
    NewCost = 1;
    break;
    
    case 'plains':
    NewCost = 1;
    break;
    
    case 'forest':
    NewCost = 2;
    break;
    
    case 'hills':
    NewCost = 1.5;
    break;
    
    case 'wall':
    NewCost = 0;
    break;
    
    case 'overgrowth':
    NewCost = 1.5;
    break;
    
    case 'sand':
    NewCost = 1.5;
    break;
    
    case 'mountains':
    NewCost = 0;
    break;
    
    }
break;

case 'swimming':
    switch(LandType){
    
    case 'water':
    NewCost = 1;
    break;
    
    case 'open':
    NewCost = 0;
    break;
    
    case 'plains':
    NewCost = 0;
    break;
    
    case 'forest':
    NewCost = 0;
    break;
    
    case 'hills':
    NewCost = 0;
    break;
    
    case 'wall':
    NewCost = 0;
    break;
    
    case 'overgrowth':
    NewCost = 0;
    break;
    
    case 'sand':
    NewCost = 0;
    break;
    
    case 'mountains':
    NewCost = 0;
    break;
    
    }
break;


case 'elf':
    switch(LandType){
    
    case 'water':
    NewCost = 0;
    break;
    
    case 'open':
    NewCost = 1;
    break;
    
    case 'plains':
    NewCost = 1;
    break;
    
    case 'forest':
    NewCost = 2;
    break;
    
    case 'hills':
    NewCost = 1.5;
    break;
    
    case 'wall':
    NewCost = 0;
    break;
    
    case 'overgrowth':
    NewCost = 1.5;
    break;
    
    case 'sand':
    NewCost = 2;
    break;
    
    case 'mountains':
    NewCost = 0;
    break;
    
    }
break;


case 'centaur':
    switch(LandType){
    
    case 'water':
    NewCost = 0;
    break;
    
    case 'open':
    NewCost = 1;
    break;
    
    case 'plains':
    NewCost = 1;
    break;
    
    case 'forest':
    NewCost = 2.5;
    break;
    
    case 'hills':
    NewCost = 2.5;
    break;
    
    case 'wall':
    NewCost = 0;
    break;
    
    case 'overgrowth':
    NewCost = 1.5;
    break;
    
    case 'sand':
    NewCost = 2.5;
    break;
    
    case 'mountains':
    NewCost = 0;
    break;
    
    }
break;

case 'animal':
    switch(LandType){
    
    case 'water':
    NewCost = 0;
    break;
    
    case 'open':
    NewCost = 1;
    break;
    
    case 'plains':
    NewCost = 1.5;
    break;
    
    case 'forest':
    NewCost = 1;
    break;
    
    case 'hills':
    NewCost = 1;
    break;
    
    case 'wall':
    NewCost = 0;
    break;
    
    case 'overgrowth':
    NewCost = 1;
    break;
    
    case 'sand':
    NewCost = 2;
    break;
    
    case 'mountains':
    NewCost = 0;
    break;
    
    }
break;

case 'mechanical':
    switch(LandType){
    
    case 'water':
    NewCost = 0;
    break;
    
    case 'open':
    NewCost = 1;
    break;
    
    case 'plains':
    NewCost = 1;
    break;
    
    case 'forest':
    NewCost = 1.5;
    break;
    
    case 'hills':
    NewCost = 1.5;
    break;
    
    case 'wall':
    NewCost = 0;
    break;
    
    case 'overgrowth':
    NewCost = 1;
    break;
    
    case 'sand':
    NewCost = 1.5;
    break;
    
    case 'mountains':
    NewCost = 0;
    break;
    
    }
break;

case 'hovering':
    switch(LandType){
    
    case 'water':
    NewCost = 1;
    break;
    
    case 'open':
    NewCost = 0;
    break;
    
    case 'plains':
    NewCost = 0;
    break;
    
    case 'forest':
    NewCost = 0;
    break;
    
    case 'hills':
    NewCost = 0;
    break;
    
    case 'wall':
    NewCost = 0;
    break;
    
    case 'overgrowth':
    NewCost = 0;
    break;
    
    case 'sand':
    NewCost = 0;
    break;
    
    case 'mountains':
    NewCost = 0;
    break;
    
    }
break;



case 'flying':
    switch(LandType){
    
    case 'water':
    NewCost = 1;
    break;
    
    case 'open':
    NewCost = 1;
    break;
    
    case 'plains':
    NewCost = 1;
    break;
    
    case 'forest':
    NewCost = 1;
    break;
    
    case 'hills':
    NewCost = 1;
    break;
    
    case 'wall':
    NewCost = 0;
    break;
    
        case 'overgrowth':
    NewCost = 1;
    break;
    
    case 'sand':
    NewCost = 1;
    break;
    
    case 'mountains':
    NewCost = 1;
    break;
    
    }
break;
}
if(!Overwrite){//dont block for AI stuff
    if (Blocked != noone){
        NewCost = 0;
    }
}

return NewCost;
