//argument 0 = x
//argument 1 = y
//argument 2 = PlayerType

var x1, y1, UnitType, LandType, Blocked, NewCost, CurrentCharacter;

x1 = argument0;
y1 = argument1;
CurrentCharacter = argument2;
UnitType = CurrentCharacter.MovementType;
LandType = argument3;

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
    NewEffect = 1;
    break;
    
    case 'open':
    NewEffect = 0;
    break;
    
    case 'plains':
    NewEffect = 0;
    break;
    
    case 'forest':
    NewEffect = 0;
    break;
    
    case 'hills':
    NewEffect = 0;
    break;
    
    case 'wall':
    NewEffect = 0;
    break;
    
    case 'overgrowth':
    NewEffect = 0;
    break;
    
    case 'sand':
    NewEffect = 0;
    break;
    
    case 'mountains':
    NewEffect = 0;
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

return NewCost;
