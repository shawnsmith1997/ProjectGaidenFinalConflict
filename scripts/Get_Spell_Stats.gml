//argument 0 = Spell Name
//argument 1 = Spell Level
//Argument 2 = Stat to return;


var Spell, Level, Damage, Range, Sprite, Area, ManaCost, RangeLimit, Target, SpellType;
//Target = Target player, enemy or both (1 2 3)

Spell = argument0;
Level = argument1;
Return = argument2;

//Defaults
Sprite = BlankSpellSlotSprite;
Damage = 0;
Range = 0;
RangeLimit = -1;
Area = 1;
ManaCost = 1;
Target = 1;
CurePoison = false;




//Blaze Spell
if (Spell = 'Blaze'){
    Sprite = BlazeIconSprite;
    Target = 2;
    RangeLimit = 0;
    SpellType = 'Damage';
    if(Level = 1){//Spell level 1
        Damage = 6;
        Range = 2;
        Area = 1;
        ManaCost = 2;
    }
    else if(Level = 2){//Spell level 2
        Damage = 10;
        Range = 2;
        Area = 2;
        ManaCost = 5;
    }
    else if(Level = 3){//Spell level 3
        Damage = 15;
        Range = 2;
        Area = 2;
        ManaCost = 10;
    }
    else if(Level = 4){//Spell level 4
        Damage = 40;
        Range = 2;
        Area = 1;
        ManaCost = 10;
    }
}

else if (Spell = 'Katon'){
    Sprite = KatonSpellSprite;
    Target = 2;
    RangeLimit = 0;
    SpellType = 'Damage';
    if(Level = 1){//Spell level 1
        Damage = 9;
        Range = 2;
        Area = 1;
        ManaCost = 2;
    }
    else if(Level = 2){//Spell level 2
        Damage = 13;
        Range = 2;
        Area = 2;
        ManaCost = 6;
    }
    else if(Level = 3){//Spell level 3
        Damage = 18;
        Range = 2;
        Area = 2;
        ManaCost = 10;
    }
    else if(Level = 4){//Spell level 4
        Damage = 44;
        Range = 2;
        Area = 1;
        ManaCost = 12;
    }
}

else if (Spell = 'Demon'){
    Sprite = DemonBreatheIcon;
    Target = 2;
    RangeLimit = 0;
    SpellType = 'Damage';
    if(Level = 1){//Spell level 1
        Damage = 30;
        Range = 3;
        Area = 3;
        ManaCost = 0;
    }
    else if(Level = 2){//Spell level 2
        Damage = 13;
        Range = 2;
        Area = 2;
        ManaCost = 6;
    }
    else if(Level = 3){//Spell level 3
        Damage = 18;
        Range = 2;
        Area = 2;
        ManaCost = 10;
    }
    else if(Level = 4){//Spell level 4
        Damage = 44;
        Range = 2;
        Area = 1;
        ManaCost = 12;
    }
}


//Blaze Spell
else if (Spell = 'Blast'){
    Sprite = BlastIconSprite;
    Target = 2;
    RangeLimit = 0;
    SpellType = 'Damage';
    if(Level = 1){//Spell level 1
        Damage = 6;
        Range = 2;
        Area = 1;
        ManaCost = 2;
    }
    else if(Level = 2){//Spell level 2
        Damage = 8;
        Range = 2;
        Area = 2;
        ManaCost = 5;
    }
    else if(Level = 3){//Spell level 3
        Damage = 12;
        Range = 2;
        Area = 3;
        ManaCost = 8;
    }
    else if(Level = 4){//Spell level 4
        Damage = 30;
        Range = 2;
        Area = 1;
        ManaCost = 8;
    }
}

 //Laser Spell
 else if (Spell = 'Laser'){
        Sprite = LaserIconSprite;
        Target = 2;
        RangeLimit = 0;
        SpellType = 'Damage';
    if(Level = 1){//Spell level 1
        Damage = 50;
        Range = 2;
        Area = 1;
        ManaCost = 12;
    }
    else if(Level = 2){//Spell level 2
        Damage = 50;
        Range = 2;
        Area = 1;
        ManaCost = 12;
    }
    else if(Level = 3){//Spell level 3
        Damage = 50;
        Range = 2;
        Area = 1;
        ManaCost = 12;
    }
    else if(Level = 4){//Spell level 4
        Damage = 50;
        Range = 2;
        Area = 1;
        ManaCost = 12;
    }
}

else if (Spell = 'Heal'){
    Sprite = HealIconSprite;
    RangeLimit = -1;
    Target = 1;
    SpellType = 'Heal';
    if(Level = 1){//Spell level 1
        Damage = 15;
        Range = 1;
        Area = 1;
        ManaCost = 3;
    }
    else if(Level = 2){//Spell level 2
        Damage = 15;
        Range = 2;
        Area = 1;
        ManaCost = 5;
    }
    else if(Level = 3){//Spell level 3
        Damage = 30;
        Range = 3;
        Area = 1;
        ManaCost = 10;
    }
    else if(Level = 4){//Spell level 4
        Damage = 1000;
        Range = 1;
        Area = 1;
        ManaCost = 20;
    }
}

else if (Spell = 'Attack'){
    Sprite = AttackIconSprite;
    RangeLimit = -1;
    Target = 1;
    SpellType = 'Attack';
    if(Level = 1){//Spell level 1
        Damage = 15;
        Range = 3;
        Area = 1;
        ManaCost = 7;
    }
    else if(Level = 2){//Spell level 2
        Damage = 15;
        Range = 3;
        Area = 2;
        ManaCost = 15;
    }
    else if(Level = 3){//Spell level 3
        Damage = 30;
        Range = 3;
        Area = 1;
        ManaCost = 10;
    }
    else if(Level = 4){//Spell level 4
        Damage = 1000;
        Range = 1;
        Area = 1;
        ManaCost = 20;
    }
}

else if (Spell = 'Quick'){
    Sprite = BoostIconSprite;
    RangeLimit = -1;
    Target = 1;
    SpellType = 'Quick';
    if(Level = 1){//Spell level 1
        Damage = 15;
        Range = 3;
        Area = 1;
        ManaCost = 7;
    }
    else if(Level = 2){//Spell level 2
        Damage = 15;
        Range = 3;
        Area = 2;
        ManaCost = 15;
    }
    else if(Level = 3){//Spell level 3
        Damage = 30;
        Range = 3;
        Area = 1;
        ManaCost = 10;
    }
    else if(Level = 4){//Spell level 4
        Damage = 1000;
        Range = 1;
        Area = 1;
        ManaCost = 20;
    }
}


else if (Spell = 'Detox'){
    Sprite = DetoxIconSprite;
    RangeLimit = -1;
    Target = 1;
    CurePoison = true;
    SpellType = 'Heal';
    if(Level = 1){//Spell level 1
        Range = 1;
        Area = 1;
        ManaCost = 3;
    }
    else if(Level = 2){//Spell level 2
        Range = 2;
        Area = 1;
        ManaCost = 6;
    }
    else if(Level = 3){//Spell level 3
        Range = 2;
        Area = 1;
        ManaCost = 10;
    }
    else if(Level = 4){//Spell level 4
        Range = 3;
        Area = 3;
        ManaCost = 16;
    }
}

else if (Spell = 'Aura'){
    SpellType = 'Heal';
    Sprite = AuraIconSprite;
    RangeLimit = -1;
    Target = 1;
    if(Level = 1){//Spell level 1
        Damage = 15;
        Range = 2;
        Area = 2;
        ManaCost = 7;
    }
    else if(Level = 2){//Spell level 2
        Damage = 15;
        Range = 3;
        Area = 3;
        ManaCost = 11;
    }
    else if(Level = 3){//Spell level 3
        Damage = 30;
        Range = 3;
        Area = 3;
        ManaCost = 15;
    }
    else if(Level = 4){//Spell level 4
        Damage = 999;
        Range = 0;
        Area = 1;
        ManaCost = 20;
    }
}

else if (Spell = 'Freeze'){
    SpellType = 'Damage';
    Sprite = FreezeIconSprite;
    RangeLimit = 0;
    Target = 2;
    if(Level = 1){//Spell level 1
        Damage = 10;
        Range = 2;
        Area = 1;
        ManaCost = 3;
    }
    else if(Level = 2){//Spell level 2
        Damage = 12;
        Range = 2;
        Area = 2;
        ManaCost = 7;
    }
    else if(Level = 3){//Spell level 3
        Damage = 18;
        Range = 3;
        Area = 2;
        ManaCost = 12;
    }
    else if(Level = 4){//Spell level 4
        Damage = 50;
        Range = 3;
        Area = 1;
        ManaCost = 12;
    }
}

else if (Spell = 'Bolt'){
    Sprite = BoltIconSprite;
    RangeLimit = 0;
    Target = 2;
    SpellType = 'Damage';
    if(Level = 1){//Spell level 1
        Damage = 14;
        Range = 2;
        Area = 2;
        ManaCost = 8;
    }
    else if(Level = 2){//Spell level 2
        Damage = 16;
        Range = 3;
        Area = 3;
        ManaCost = 15;
    }
    else if(Level = 3){//Spell level 3
        Damage = 25;
        Range = 3;
        Area = 3;
        ManaCost = 20;
    }
    else if(Level = 4){//Spell level 4
        Damage = 60;
        Range = 3;
        Area = 1;
        ManaCost = 20;
    }
}

else if (Spell = 'Raijin'){
    Sprite = RaijinIconSprite;
    RangeLimit = 0;
    Target = 2;
    SpellType = 'Damage';
    if(Level = 1){//Spell level 1
        Damage = 15;
        Range = 2;
        Area = 2;
        ManaCost = 8;
    }
    else if(Level = 2){//Spell level 2
        Damage = 20;
        Range = 3;
        Area = 3;
        ManaCost = 15;
    }
    else if(Level = 3){//Spell level 3
        Damage = 25;
        Range = 3;
        Area = 3;
        ManaCost = 18;
    }
    else if(Level = 4){//Spell level 4
        Damage = 65;
        Range = 3;
        Area = 1;
        ManaCost = 20;
    }
}


else if (Spell = 'Egress'){
    Sprite = EscapeIconSprite;
    RangeLimit = 0;
    Target = 1;
    SpellType = 'Heal';
    //if(Level = 1){//Spell level 1
        Damage = 0;
        Range = 0;
        Area = 1;
        ManaCost = 8;
    //}
}

else if (Spell = 'Desoul'){
    SpellType = 'Desoul';
    Sprite = DesoulIconSprite;
    RangeLimit = 0;
    Target = 2;
    if(Level = 1){//Spell level 1
        Damage = 10;
        Range = 2;
        Area = 1;
        ManaCost = 3;
    }
    else if(Level = 2){//Spell level 2
        Damage = 12;
        Range = 2;
        Area = 2;
        ManaCost = 7;
    }
}
/*
else{
    Sprite = BlankSpellSlotSprite;
    Damage = 0;
    Range = 0;
    Area = 1;
    ManaCost = 0;
    Target = 2;
    RangeLimit = 0;
}*/


if(Return = "Sprite"){
    return Sprite;
}
else if(Return = "Damage"){
    return Damage;
}
else if(Return = "SpellRange"){
    return Range;
}
else if(Return = "Area"){
    return Area;
}
else if(Return = "ManaCost"){
    return ManaCost;
}
else if(Return = "TargetType"){
    return Target;
}
else if(Return = "SpellLimit"){
    return RangeLimit;
}
else if(Return = "SpellType"){
    return SpellType;
}
else if(Return = "CurePoison"){
    return CurePoison;
}
