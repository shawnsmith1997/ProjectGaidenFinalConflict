//Returns the Total Stat (Stat + Weapon + Item) of a character. Used in battles
//Argument 0 = Character Object
//Argument 1 = Stat to return.

//player or non player (1 or 0)
//either the players ID or the non player object
//stat to return

/*
Stat List
1 = Attack
2 = Defense
3 = Agility
4 = MoveRange
5 = AttackRange
6 = Turns
*/

/*
Reference to Get_Item_Stats();
1 = Sprite
2 = Name1
3 = Name2
4 = Attack
5 = Defense
6 = Agility
7 = MoveRange
8 = AttackRange
(You can always add more)
9 = Main, Offhand, or both (0, 1, 2) (if it's none, it doesnt matter what you set it to).
10 = equippable? true / false;
11 = Turns
*/



var Character,Stat;
var Attack, Defense, Agility, MoveRange, AttackRange, Turns, AttackArea, AttackLimit, CounterChance, DoubleChance, CritChance, MagicCritChance, BlockChance;
var PoisonChance, PoisonResistance;
Character = argument0;
Stat = argument1;

Attack = Character.Attack + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'Attack') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'Attack');
if (Character.AttackBuff > 0) {Attack = round(Attack*1.25);}
Defense = Character.Defense + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'Defense') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'Defense');
if (Character.DefenceBuff > 0) {Defense = round(Defense*1.25);}
Agility = Character.Agility + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'Agility') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'Agility');
if (Character.QuickBuff > 0) {Agility = round(Agility*1.25);}
MoveRange = Character.MoveRange + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'MoveRange') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'MoveRange');
AttackRange = Character.AttackRange + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'AttackRange') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'AttackRange');
Turns = Character.BonusTurns + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'Turns') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'Turns');
AttackArea = HighCap(Character.AttackArea + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'AttackArea') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'AttackArea'),3);
/*if(AttackArea > 3){//Cap attack area at max AOE size
    AttackArea = 3;
}*/
AttackLimit = Character.AttackLimit + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'AttackLimit') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'AttackLimit');

CounterChance = Character.CounterChance + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'CounterChance') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'CounterChance');
DoubleChance = Character.DoubleChance + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'DoubleChance') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'DoubleChance');
CritChance = Character.CritChance + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'CritChance') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'CritChance');
MagicCritChance = Character.MagicCritChance + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'MagicCritChance') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'MagicCritChance');
BlockChance = Character.BlockChance + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'BlockChance') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'BlockChance');

PoisonChance = HighCap(Character.PoisonChance + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'PoisonChance') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'PoisonChance'),1);
PoisonResistance = HighCap(Character.PoisonResistance + Get_Item_Stats(Get_Equipped_Weapon_Battle(Character),'PoisonResistance') + Get_Item_Stats(Get_Equipped_Item_Battle(Character),'PoisonResistance'),1);

if(Stat = 'Attack'){
    return Attack;
}
else if(Stat = 'Defense'){
    return Defense;
}
else if(Stat = 'Agility'){
    return Agility;
}
else if(Stat = 'MoveRange'){
    return MoveRange;
}
else if(Stat = 'AttackRange'){
    return AttackRange;
}
else if(Stat = 'Turns'){
    return Turns;
}
else if(Stat = 'AttackArea'){
    return AttackArea;
}
else if(Stat = 'AttackLimit'){
    return AttackLimit;
}
else if(Stat = 'CounterChance'){
    return CounterChance;
}
else if(Stat = 'DoubleChance'){
    return DoubleChance;
}
else if(Stat = 'CritChance'){
    return CritChance;
}
else if(Stat = 'MagicCritChance'){
    return MagicCritChance;
}
else if(Stat = 'BlockChance'){
    return BlockChance;
}
else if(Stat = 'PoisonChance'){
    return PoisonChance;
}
else if(Stat = 'PoisonResistance'){
    return PoisonResistance;
}
