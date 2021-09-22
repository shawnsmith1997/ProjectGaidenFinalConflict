var Character, Target, Z, LevelDifference;

Character = argument0;
Target = argument1;
Z = 0;
LevelDifference = (global.Promoted[Character.ID]*7 + Character.Level) - Target.Level;
            
switch(LevelDifference){    
    case 3: Z = 40; break;
    case 4: Z = 30; break;
    case 5: Z = 20; break;
    case 6: Z = 10; break;
    default: 
        if(LevelDifference <= 2){
            Z = 50;
        }
        else {
            Z = 0;
        }
}

return Z;
