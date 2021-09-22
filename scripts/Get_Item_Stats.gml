//Returns the selected stat of an item.
//Argument0 = Item ID
//Argument1 = What stat to return.

/*(You can always add more of these)
1 = Sprite
2 = Name1``
3 = Name2
4 = Attack
5 = Defense
6 = Agility
7 = MoveRange
8 = AttackRange
9 = 
10 = 
11 = Turns
12 = UseRange (When using the item, what is it's range)
13 = UseLimit (When using an item, what is the limitation? (like archer range) -1 means allow selecting of current tile)
14 = UseType (what type of character's to select. (allies, enemies, or both) (1,2,3)
15 = Attack Area.
16 = UseEffect
*/

var ID, Stat, CharacterID;
var Sprite, Name, Name2, Attack, Defense, Agility, MoveRange, AttackRange, Turns, AttackArea, AttackLimit;
var UseRange, UseRangeLimit, UseTarget, Effect, UseInBattle, UseInTown, TargetOther, Consumable, DoubleChance;
var CritChance, MagicCritChance, CounterChance, BlockChance, PoisonChance, PoisonResistance;
var Cursed;
ID = argument0;
Stat = argument1;

//This is the default attributes list
//This way you only have to add a variable
//to an item only if said item is different
//than the blank default item.
Sprite = BlankItemSlotSprite;
Name = '';
Name2 = '';//because the font is screwed up. 
Attack = 0;
Defense = 0;
Agility = 0;
MoveRange = 0;
AttackRange = 0;
Turns = 0;
UseRange = 0;
UseRangeLimit = 0;
UseTarget = 0;
AttackArea = 0;//AOE size increase
AttackLimit = 0;
Effect = 'none';//does it have an effect?
UseInBattle = false;//can we use it in battle? 
UseInTown = false;//can we use it in town? (stat boosts, but not medical herbs, ect)
TargetOther = false;//town use only, do we get to choose a target? (stat boosts, ect)
Consumable = false;//Destroyed on use?
CritChance = 0;
MagicCritChance = 0;
CounterChance = 0;
DoubleChance = 0;
BlockChance = 0;
PoisonChance = 0;
PoisonResistance = 0;
Cursed = 0;
//End default stats list

//Item_01 Battered Sword
if(ID = 1){
    Sprite = Item_01Sprite;
    Name = 'Middle';
    Name2 = ' Sword';
    Attack = 7;
}

//Item_02 Battered Arrow
else if(ID = 2){
    Sprite = Item_02Sprite;
    Name = 'Wooden';
    Name2 = ' Arrow';
    Attack = 4;
    AttackRange = 1;
    AttackArea = 0;//AOE size increase
}

//Item_03 Bronze Rod
else if(ID = 3){
    Sprite = Item_03Sprite;
    Name = "Bronze";
    Name2 = ' Rod';
    Attack = 5;
}
//Item_04 Power Potion
else if(ID = 4){
    Sprite = Item_04Sprite;
    Name = 'Power';
    Name2 = ' Potion';
    Effect = 'Attack Up';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    //UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
}
//Item_10 Ring of Renewal
else if(ID = 10){
    Sprite = Item_10Sprite;
    Name = 'Quick ';
    Name2 = ' Ring';
    Effect = 'Attack Up';
    UseRange = 3;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = false;
    TargetOther = true;
    Consumable = false;
    Area = 1;
    Attack = 5;
    Agility = 5;
}
//Item_11 Toxic Ring
else if(ID = 11){
    Sprite = Item_11Sprite;
    Name = 'Ring of';
    Name2 = ' Mobility';
    MoveRange = 5;
}
//Item_12 Short Axe
else if(ID = 25){
    Sprite = Item_25Sprite;
    Name = "Short";
    Name2 = ' Axe';
    Attack = 6;
}

//Item_12 Hand Axe
else if(ID = 26){
    Sprite = Item_26Sprite;
    Name = "Hand";
    Name2 = ' Axe';
    Attack = 9;
}

//Item_12 Bronze Lance
else if(ID = 27){
    Sprite = Item_27Sprite;
    Name = "Bronze";
    Name2 = ' Lance';
    Attack = 9;
}

//Item_02 Iron Arrow
else if(ID = 28){
    Sprite = Item_28Sprite;
    Name = 'Iron';
    Name2 = ' Arrow';
    Attack = 8;
    AttackRange = 1;
    AttackArea = 0;//AOE size increase
}

//Item_29 Long Sword
else if(ID = 29){
    Sprite = Item_29Sprite;
    Name = "Long";
    Name2 = ' Sword';
    Attack = 12;
}

else if(ID = 30){
    Sprite = Item_30Sprite;
    Name = "Steel";
    Name2 = ' Lance';
    Attack = 12;
}

else if(ID = 31){
    Sprite = Item_31Sprite;
    Name = "Power";
    Name2 = ' Glove';
    Attack = 9;
}

else if(ID = 32){
    Sprite = Item_32Sprite;
    Name = "Steel";
    Name2 = ' Arrow';
    Attack = 13;
    AttackRange = 1;
    AttackArea = 0;//AOE size increase
}

else if(ID = 33){
    Sprite = Item_33Sprite;
    Name = "Dagger";
    Name2 = ' ';
    Attack = 14;
    AttackRange = 1;
}

else if(ID = 35){
    Sprite = Item_34Sprite;
    Name = "Middle";
    Name2 = ' Axe';
    Attack = 14;
}

else if(ID = 36){
    Sprite = Item_35Sprite;
    Name = "Steel";
    Name2 = ' Sword';
    Attack = 16;
}

else if(ID = 37){
    Sprite = Item_36Sprite;
    Name = "Broad";
    Name2 = ' Sword';
    Attack = 19;
}

else if(ID = 38){
    Sprite = Item_37Sprite;
    Name = "Power";
    Name2 = ' Spear';
    Attack = 18;
AttackRange = 1;
}

else if(ID = 39){
    Sprite = Item_38Sprite;
    Name = "Chrome";
    Name2 = ' Lance';
    Attack = 22;
}

else if(ID = 40){
    Sprite = Item_39Sprite;
    Name = "Battle";
    Name2 = ' Axe';
    Attack = 20;
}

else if(ID = 41){
    Sprite = Item_40Sprite;
    Name = "Brass";
    Name2 = ' Knuckles';
    Attack = 12;
}

else if(ID = 42){
    Sprite = Item_41Sprite;
    Name = "Power";
    Name2 = ' Stick';
    Attack = 12;
}

else if(ID = 43){
    Sprite = Item_42Sprite;
    Name = "Robin";
    Name2 = ' Arrow';
    Attack = 15;
AttackRange = 2;
    AttackArea = 0;//AOE size increase
}

else if(ID = 44){ 
    Sprite = Item_43Sprite;
    Name = "Assault";
    Name2 = ' Shell';
    Attack = 19;
AttackRange = 2;
    AttackArea = 0;//AOE size increase
}

else if(ID = 45){
    Sprite = Item_44Sprite;
    Name = "Critical";
    Name2 = ' Sword';
    Attack = 28;
}

else if(ID = 46){
    Sprite = Item_45Sprite;
    Name = "Valkyrie";
    Name2 = ' ';
    Attack = 24;
AttackRange = 1;
}

else if(ID = 47){
    Sprite = Item_46Sprite;
    Name = "Great";
    Name2 = ' Axe';
    Attack = 28;
}

else if(ID = 48){
    Sprite = Item_47Sprite;
    Name = "Battle";
    Name2 = ' Knuckles';
    Attack = 15;
}

else if(ID = 49){
    Sprite = Item_48Sprite;
    Name = "Archangel";
    Name2 = '  Staff';
    Attack = 16;
}

else if(ID = 50){
    Sprite = Item_49Sprite;
    Name = "Great";
    Name2 = ' Shot';
    Attack = 24;
AttackRange = 2;
    AttackArea = 0;//AOE size increase
}

else if(ID = 51){
    Sprite = Item_50Sprite;
    Name = "Throwing";
    Name2 = ' Katana';
    Attack = 25;
}

else if(ID = 52){
    Sprite = Item_51Sprite;
    Name = "Heat";
    Name2 = ' Axe';
    Attack = 24;
    UseRange = 2;
    Effect = 'Blaze';
    //UseRangeLimit = -1;
    Area = 2;
    UseTarget = 2;
    UseInBattle = true;
    //UseInTown = true;
    TargetOther = true;
}

else if(ID = 53){
    Sprite = Item_52Sprite;
    Name = "Kaiser";
    Name2 = ' Knuckles';
    Attack = 22;
}

else if(ID = 54){
    Sprite = Item_53Sprite;
    Name = "Mystery";
    Name2 = ' Staff';
    Attack = 24;
}

else if(ID = 55){
    Sprite = Item_54Sprite;
    Name = "Demon";
    Name2 = ' Rod';
    Attack = 30;
    Cursed = 1;
}

else if(ID = 56){
    Sprite = Item_55Sprite;
    Name = "Dark";
    Name2 = ' Sword';
    Attack = 35;
    Cursed = 1;
    UseRange = 3;
    Effect = 'Freeze';
    //UseRangeLimit = -1;
    Area = 2;
    UseTarget = 2;
    UseInBattle = true;
    //UseInTown = true;
    TargetOther = true;
}

else if(ID = 57){
    Sprite = Item_56Sprite;
    Name = "Ground";
    Name2 = ' Axe';
    Attack = 32;
}

else if(ID = 58){
    Sprite = Item_57Sprite;
    Name = "Katana";
    Name2 = '';
    Attack = 32;
    Effect = 'Blast';
    UseRange = 2;
    //UseRangeLimit = -1;
    Area = 2;
    UseTarget = 2;
    UseInBattle = true;
    //UseInTown = true;
    TargetOther = true;
}


else if(ID = 60){
    Sprite = Item_Chaos;
    Name = 'Chaos';
    Name2 = ' Breaker';
    Attack = 34;
    Effect = 'Freeze';
    UseRange = 3;
    //UseRangeLimit = -1;
    Area = 2;
    UseTarget = 2;
    UseInBattle = true;
    //UseInTown = true;
    TargetOther = true;
    
}


//=============
//Cheaty Stuff=
//=============
if(ID = 100){
    Sprite = Item_01Sprite;
    Name = 'Cheaters';
    Name2 = ' Sword';
    Attack = 3;
    AttackArea = 1;
}

//Item_02 Battered Arrow
else if(ID = 101){
    Sprite = Item_02Sprite;
    Name = 'Cheaters';
    Name2 = ' Arrow';
    Attack = 3;
    AttackRange = 1;
    AttackArea = 1;
    //PoisonChance = .5
}
else if(ID = 102){
    Sprite = Item_10Sprite;
    Name = 'Ring of';
    Name2 = ' Cheats';
    AttackArea = 1;
}

//Item_04 Wooden Arrow
else if(ID = 4){ 
Sprite = Item_04Sprite;
Name = 'Wooden';
Name2 = ' Arrow';
Attack = 3;
AttackRange = 1;
}

//Item_05 Wooden Rod
else if(ID = 5){
Sprite = Item_05Sprite;
Name = 'Wooden';
Name2 = ' Rod';
Attack = 3;
}

//Item_06 Stick
else if(ID = 6){
Sprite = Item_06Sprite;
Name = 'Stick';
Attack = 3;
}

//Item_07 Wooden Spear
else if(ID = 7){
Sprite = Item_07Sprite;
Name = 'Short';
Name2 = ' Spear';
Attack = 6;
AttackRange = 1;
}

//Item_08 Elven Arrow
else if(ID = 8){
Sprite = Item_08Sprite;
Name = 'Elven';
Name2 = ' Arrow';
Attack = 17;
AttackRange = 2;
}

//Item_09 Shining Ball
else if(ID = 9){
Sprite = Item_09Sprite;
Name = 'Shining';
Name2 = ' Ball';
UseRange = 2;
UseRangeLimit = 0;
UseTarget = 2;
Effect = 'Shining Ball'
}

//Item_10 Mobility Ring
/*else if(ID = 10){
Sprite = Item_10Sprite;
Name = 'Mobility';
Name2 = ' Ring';
MoveRange = 2;
}*/

//Item_11 Mystic Blade
/*else if(ID = 11){
Sprite = Item_11Sprite;
Name = '??????';
Name2 = ' ?????';
Attack = 162;
}*/
//Item_12 Grand Sword
else if(ID = 12){
Sprite = Item_12Sprite;
Name = 'Grand';
Name2 = ' Sword';
Attack = 42;
}
//Item_13 Throwing Knife
else if(ID = 13){
Sprite = Item_13Sprite;
Name = 'Throwing';
Name2 = ' Knife';
Attack = 8;
AttackRange = 1;
}
//Item_12 Grand Sword
else if(ID = 14){
Sprite = Item_14Sprite;
Name = 'Mystic';
Name2 = ' Staff';
Attack = 39;
}
//Item_12 Grand Sword
else if(ID = 15){
Sprite = Item_15Sprite;
Name = 'Great';
Name2 = ' Shot';
Attack = 42;
AttackRange = 1;
}

//Item_12 Grand Sword
else if(ID = 16){
Sprite = Item_16Sprite;
Name = 'The Ban';
Name2 = ' Hammer';
Attack = 42;
}

//Item_17 Leather Glove
else if(ID = 17){
Sprite = Item_17Sprite;
Name = 'Leather';
Name2 = ' Glove';
Attack = 5;
AttackRange = 0;
}

//Consumables

else if(ID = 201){
    Sprite = Item_201Sprite;
    Name = 'Medical';
    Name2 = ' Herb';
    Effect = 'Minor Heal';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 202){
    Sprite = Item_202Sprite;
    Name = 'Healing';
    Name2 = ' Seed';
    Effect = 'Standard Heal';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 203){
    Sprite = Item_203Sprite;
    Name = 'Antidote';
    Name2 = '';
    Effect = 'Minor Heal';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 204){
    Sprite = Item_204Sprite;
    Name = 'Angel';
    Name2 = ' Wing';
    Effect = 'Minor Heal';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 205){
    Sprite = Item_205Sprite;
    Name = 'Quick';
    Name2 = ' Chicken';
    Effect = 'Attack Up';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 206){
    Sprite = Item_206Sprite;
    Name = 'Protect';
    Name2 = ' Milk';
    Effect = 'Attack Up';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 207){
    Sprite = Item_207Sprite;
    Name = 'Cheerful';
    Name2 = ' Bread';
    Effect = 'Attack Up';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 208){
    Sprite = Item_208Sprite;
    Name = 'Power';
    Name2 = ' Wine';
    Effect = 'Attack Up';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 214){
    Sprite = Item_214Sprite;
    Name = 'Mobility';
    Name2 = ' Pimento';
    Effect = 'Attack Up';
    UseRange = 1;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = true;
    TargetOther = true;
    Consumable = true;
    Area = 1;
}

else if(ID = 209){
    Sprite = Item_209Sprite;
    Name = 'Protect';
    Name2 = ' Ring';
    Effect = 'Attack Up';
    UseRange = 3;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = false;
    TargetOther = true;
    Consumable = false;
    Area = 1;
    Defense = 5;
}



else if(ID = 210){
    Sprite = Item_210Sprite;
    Name = 'Evil';
    Name2 = ' Ring';
    Effect = 'Bolt';
    UseRange = 3;
    //UseRangeLimit = -1;
    UseTarget = 3;
    UseInBattle = true;
    UseInTown = false;
    TargetOther = true;
    Consumable = false;
    Cursed = 1;
    Area = 3;
    Attack = 10;
}

else if(ID = 211){
    Sprite = Item_211Sprite;
    Name = 'Power';
    Name2 = ' Ring';
    Effect = 'Attack Up';
    UseRange = 3;
    UseRangeLimit = -1;
    UseTarget = 1;
    UseInBattle = true;
    UseInTown = false;
    TargetOther = true;
    Consumable = false;
    Area = 1;
    Attack = 5;
}

else if(ID = 212){
    Sprite = Item_212Sprite;
    Name = 'White';
    Name2 = ' Ring';
    Effect = 'Aura Heal';
    UseRange = 3;
    UseRangeLimit = -1;
    UseTarget = 3;
    UseInBattle = true;
    UseInTown = false;
    TargetOther = true;
    Consumable = false;
    Area = 3;
    Defense = 10;
}

else if(ID = 213){
    Sprite = Item_213Sprite;
    Name = 'Black';
    Name2 = ' Ring';
    Effect = 'Blaze';
    UseRange = 2;
    //UseRangeLimit = -1;
    UseTarget = 2;
    UseInBattle = true;
    UseInTown = false;
    TargetOther = true;
    Consumable = false;
    Cursed = 1;
    Area = 2;
    Defense = 10;
}


if(Stat = 'Sprite'){
    return Sprite;
}
else if(Stat = 'Name'){
    return Name;
}
else if(Stat = 'Name2'){
    return Name2;
}
else if(Stat = 'Attack'){
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
else if(Stat = 'AttackLimit'){
    return AttackLimit;
}
else if(Stat = 'Turns'){
    return Turns;
}
else if(Stat = 'UseRange'){
    return UseRange;
}
else if(Stat = 'UseRangeLimit'){
    return UseRangeLimit;
}
else if(Stat = 'UseTarget'){
    return UseTarget;
}
else if (Stat = 'AttackArea'){
    return AttackArea;
}
else if (Stat = 'Area'){
    return Area;
}
else if(Stat = 'Effect'){
    return Effect;
}
else if(Stat = 'UseInBattle'){
    return UseInBattle;
}
else if(Stat = 'UseInTown'){
    return UseInTown;
}
else if(Stat = 'TargetOther'){
    return TargetOther;
}
else if(Stat = 'Consumable'){
    return Consumable;
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
else if(Stat = 'CounterChance'){
    return CounterChance;
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
else if(Stat = 'Cursed'){
    return Cursed;
}
