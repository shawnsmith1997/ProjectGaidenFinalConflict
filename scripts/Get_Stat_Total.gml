//Returns the Total Stat (Stat + Weapon + Item) of a ID. This is for use in towns.
//Argument 0 = ID ID
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



var ID,Stat;
var Attack, Defense, Agility, MoveRange, AttackRange, Turns, AttackArea;
ID = argument0;
Stat = argument1;

Attack = global.Attack[ID] + Get_Item_Stats(Get_Equipped_Weapon(ID),'Attack') + Get_Item_Stats(Get_Equipped_Item(ID),'Attack');
Defense = global.Defense[ID] + Get_Item_Stats(Get_Equipped_Weapon(ID),'Defense') + Get_Item_Stats(Get_Equipped_Item(ID),'Defense');
Agility = global.Agility[ID] + Get_Item_Stats(Get_Equipped_Weapon(ID),'Agility') + Get_Item_Stats(Get_Equipped_Item(ID),'Agility');
MoveRange = global.MoveRange[ID] + Get_Item_Stats(Get_Equipped_Weapon(ID),'MoveRange') + Get_Item_Stats(Get_Equipped_Item(ID),'MoveRange');
//AttackRange = global.AttackRange[ID] + Get_Item_Stats(Get_Equipped_Weapon(ID),8) + Get_Item_Stats(Get_Equipped_Item(ID),8);
//Turns = global.BonusTurns[ID] + Get_Item_Stats(Get_Equipped_Weapon(ID),11) + Get_Item_Stats(Get_Equipped_Item(ID),11);
//AttackArea = global.AttackArea[ID] + Get_Item_Stats(Get_Equipped_Weapon(ID),15) + Get_Item_Stats(Get_Equipped_Item(ID),15);

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
/*
else if(Stat = 5){
    return AttackRange;
}
else if(Stat = 6){
    return Turns;
}
else if(Stat = 7){
    return AttackArea;
}
//Needs attack Limit (and you have to update 'Attack' and 'Equip' scripts to account for such!