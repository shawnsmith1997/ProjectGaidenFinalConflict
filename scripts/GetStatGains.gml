var LevelScheme, Character;
Character = argument0;
LevelScheme = global.LevelScheme[Character.ID];

//return(LevelScheme01(Character));


switch(LevelScheme){
    case 1:
        return(LevelScheme01(Character));
        break;
    case 2:
        return(LevelScheme02(Character));
        break;
    case 3:
        return(LevelScheme02(Character));
        break;
    case 4:
        return(LevelScheme02(Character));
        break;
    case 5:
        return(LevelScheme05(Character));
        break;
    case 6:
        return(LevelScheme06(Character));
        break;
    case 7:
        return(LevelScheme07(Character));
        break;
    case 8:
        return(LevelSchemeRuburan(Character));
        break;
    case 9:
        return(LevelScheme02(Character));
        break;
    case 10:
        return(LevelScheme03(Character));
        break;
    case 11:
        return(LevelScheme02(Character));
        break;
    case 12:
        return(LevelScheme02(Character));
        break;
    case 13:
        return(LevelSchemeMinto(Character));
    break;
    case 14:
        return(LevelSchemeMorton(Character));
    break;
    case 15:
        return(LevelSchemeSasuke(Character));
    break;
    case 17:
        return(LevelScheme01(Character));
    break;
    case 20:
        return(LevelSchemeJogurt(Character));
    break;              
    default:
        return(LevelScheme02(Character));
    break;     
    
}
