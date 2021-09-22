//argument 0 = UnitType
//argument 1 = TerrainType
var PlayerType, LandType, NewEffect;


PlayerType = argument0;
LandType = argument1;


switch (PlayerType){
case 'human':
    switch(LandType){
    
    case 'water':
    NewEffect = 0;
    break;
    
    case 'open':
    NewEffect = 0;
    break;
    
    case 'plains':
    NewEffect = .15;
    break;
    
    case 'forest':
    NewEffect = .3;
    break;
    
    case 'hills':
    NewEffect = .3;
    break;
    
    case 'wall':
    NewEffect = 0;
    break;
    
    case 'overgrowth':
    NewEffect = .3;
    break;
    
    case 'sand':
    NewEffect = .3;
    break;
    
    case 'mountains':
    NewEffect = 0;
    break;
    
    }
break;

case 'elf':
    switch(LandType){
    
    case 'water':
    NewEffect = 0;
    break;
    
    case 'open':
    NewEffect = 0;
    break;
    
    case 'plains':
    NewEffect = .15;
    break;
    
    case 'forest':
    NewEffect = .3;
    break;
    
    case 'hills':
    NewEffect = .15;
    break;
    
    case 'wall':
    NewEffect = 0;
    break;
    
    case 'overgrowth':
    NewEffect = .3;
    break;
    
    case 'sand':
    NewEffect = 0;
    break;
    
    case 'mountains':
    NewEffect = 0;
    break;
    
    }
break;


case 'centaur':
    switch(LandType){
    
    case 'water':
    NewEffect = 0;
    break;
    
    case 'open':
    NewEffect = 0;
    break;
    
    case 'plains':
    NewEffect = .15;
    break;
    
    case 'forest':
    NewEffect = .3;
    break;
    
    case 'hills':
    NewEffect = .15;
    break;
    
    case 'wall':
    NewEffect = 0;
    break;
    
    case 'overgrowth':
    NewEffect = .3;
    break;
    
    case 'sand':
    NewEffect = .3;
    break;
    
    case 'mountains':
    NewEffect = 0;
    break;
    
    }
break;

case 'animal':
    switch(LandType){
    
    case 'water':
    NewEffect = 0;
    break;
    
    case 'open':
    NewEffect = 0;
    break;
    
    case 'plains':
    NewEffect = .15;
    break;
    
    case 'forest':
    NewEffect = .3;
    break;
    
    case 'hills':
    NewEffect = .15;
    break;
    
    case 'wall':
    NewEffect = 0;
    break;
    
    case 'overgrowth':
    NewEffect = .3;
    break;
    
    case 'sand':
    NewEffect = .3;
    break;
    
    case 'mountains':
    NewEffect = 0;
    break;
    
    }
break;

case 'mechanical':
    switch(LandType){
    
    case 'water':
    NewEffect = 0;
    break;
    
    case 'open':
    NewEffect = 0;
    break;
    
    case 'plains':
    NewEffect = .15;
    break;
    
    case 'forest':
    NewEffect = .3;
    break;
    
    case 'hills':
    NewEffect = .15;
    break;
    
    case 'wall':
    NewEffect = 0;
    break;
    
    case 'overgrowth':
    NewEffect = .3;
    break;
    
    case 'sand':
    NewEffect = .3;
    break;
    
    case 'mountains':
    NewEffect = 0;
    break;
    
    }
break;

case 'hovering':
    switch(LandType){
    
    case 'water':
    NewEffect = 0;
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
    NewEffect = 0;
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
}

return NewEffect;