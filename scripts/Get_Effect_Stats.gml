//ok so this script basically stores every effect in the game
//Spells, although similar, do not fall into this category. 
//they are defined in "GetSpellStats"

var Effect, ReturnStat, Area, Damage, TargetType;

Effect = argument0;//the effect we're looking up
ReturnStat = argument1;//the stat we're looking up

//Defaults to prevent breaking;
Area = 1; //How big is area? (1,2,or 3)
Damage = 0;//how much damage (or healing) does it do?
TargetType = 1;// 1 = allies, 2 = enemies, 3 = both;
//end defaults

if(Effect = 'Minor Heal'){
    Area = 1;
    Damage = 15;
    TargetType = 1;// 1 = allies, 2 = enemies, 3 = both;
    
}

if(Effect = 'Aura Heal'){
    Area = 3;
    Damage = 15;
    TargetType = 1;// 1 = allies, 2 = enemies, 3 = both;
    
}

else if(Effect = 'Standard Heal'){
    Area = 1;
    Damage = 25;
    TargetType = 1;// 1 = allies, 2 = enemies, 3 = both;
    
}

else if(Effect = 'Freeze'){
    Area = 2;
    Damage = 18;
    TargetType = 2;// 1 = allies, 2 = enemies, 3 = both;
    
}

else if(Effect = 'Blast'){
    Area = 2;
    Damage = 8;
    TargetType = 2;// 1 = allies, 2 = enemies, 3 = both;
    
}

else if(Effect = 'Blaze'){
    Area = 2;
    Damage = 10;
    TargetType = 2;// 1 = allies, 2 = enemies, 3 = both;
    
}

else if(Effect = 'Bolt'){
    Area = 3;
    Damage = 16;
    TargetType = 2;// 1 = allies, 2 = enemies, 3 = both;
    
}

else if(Effect = 'Antidote'){
CurePoison = true;
}

else if(Effect = 'Attack Up'){
    Area = 1;
    Damage = 0;
    TargetType = 1;// 1 = allies, 2 = enemies, 3 = both;
}

else if(Effect = 'Egress'){
    Area = 1;
    Damage = 0;
    TargetType = 1;// 1 = allies, 2 = enemies, 3 = both;
}

switch(ReturnStat){
case 1:
    return Area;
    break;

case 2:
    return Damage;
    break;

case 3:
    return TargetType;
    break;
}
