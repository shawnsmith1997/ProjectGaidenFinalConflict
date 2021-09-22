//This is used to define all the global variables
//for all of the force members and other stuff.
var i; //Used so you dont have to replace 50+ array values every time you make a new character.
i = 1;

//Main Settings
//global.GameSpeed = 4;
global.Gold = 0;
global.StoryState = 0;
global.ForceMembers = 1; //how many in force
global.BattlePartyNumber = 1; //how many in battle party
global.TrainNumber = 0;
global.TrainMembers[0] = 0;
global.ForceCreation = 1; //Used for creating Force Battle Objects, dont change this
global.TransitionState = 0;//To remember how you left a room.
//global.BattleList[0] = 0;
global.ChestLooted[0] = 0;//keeps track of chests being looted or not. (1 is looted)
//remove this later
/*
global.TrainNumber = 5;
global.TrainMembers[1] = 2;
global.TrainMembers[2] = 3;
global.TrainMembers[3] = 4;
global.TrainMembers[4] = 5;
global.TrainMembers[5] = 6;*/
//end remove

//Characters
//Character1
global.ID[i] = 1;
global.Name[i] = 'JASON';
global.Class[i] = 'SDMN';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 12;
global.MaxHealth[i] = 12;
global.Magic[i] = 8;
global.MaxMagic[i] = 8;
global.Attack[i] = 8;
global.Defense[i] = 4;
global.Agility[i] = 4;
global.MoveRange[i] = 6;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'human';
global.In_Force[i] = true;//Did they join the team yet?
global.In_Battle_Party[i] = true;//Are they part of your active battle party?
global.Promoted[i] = 0;//Promoted? 0 = no, 1 = yes
global.Kills[i] = 0;
global.Defeats[i] = 0;
global.Turns[i] = 0; //Default number of Turns a player gets per round. (Must be at least 1) Should you wish for objects that dont move, (Maybe like a wall?) They would still have 1 turn and would be selected by the cursor, however you can always set their AI to "Do nothing"
global.AttackArea[i] = 1; //Default attack area
global.LevelScheme[i] = 1;

//Magic
global.Spells[i,1] = 'Escape';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 1;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 1;
global.Items[i,2] = 100;
global.Items[i,3] = 102;
global.Items[i,4] = 11;
global.Equipped_Weapon[i] = 1;
global.Equipped_Item[i]= 0;

//Status Effects (Make status effects and resistances arrays for possible addition of more?)
//poison
//cursed
global.IsDead[i] = false;

//Resistances and Chances
global.CounterChance[i] = .0625;// 1/16
global.DoubleChance[i] = .0625;
global.CritChance[i] = .0625;
global.MagicCritChance[i] = .0625;
global.BlockChance[i] = .0625;

global.PoisonResistance[i] = 0;
global.PoisonChance[i] = 0;
global.Poisoned[i] = false;
/*

global.StunResistance[i] = 0;
global.SleepResistance[i] = 0;
global.DesoulResistance[i] = 0;
global.MuddleResistance[i] = 0;
global.FireResistance[i] = 0;
global.IceResistance[i] = 0;
global.LightningResistance[i] = 0;
global.WindResistance[i] = 0;*/
//resistances
//wind
//lightning
//ice
//fire

i+=1;


//Character2
global.ID[i] = 2;
global.Name[i] = 'MAX';
global.Class[i] = 'ARCR';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 12;
global.MaxHealth[i] = 12;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 8;
global.Defense[i] = 5;
global.Agility[i] = 6;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 1; //For archers, whats the subtraction range.
global.MovementType[i] = 'elf';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 0;//Promoted? 0 = no, 1 = yes
global.Kills[i] = 0;
global.Defeats[i] = 0;
global.Turns[i] = 0; //Default number of Turns a player gets per round. (Must be at least 1) Should you wish for objects that dont move, (Maybe like a wall?) They would still have 1 turn and would be selected by the cursor, however you can always set their AI to "Do nothing"
global.AttackArea[i] = 1; //Default attack area
global.LevelScheme[i] = 2;

//Magic
global.Spells[i,1] = 'none';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 0;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 2;
global.Items[i,2] = 101;
global.Items[i,3] = 102;
global.Items[i,4] = 11;
global.Equipped_Weapon[i] = 2;
global.Equipped_Item[i]= 0;

global.IsDead[i] = false;
//Resistances and Chances
global.CounterChance[i] = .0625;// 1/16
global.DoubleChance[i] = .0625;
global.CritChance[i] = .0625;
global.MagicCritChance[i] = .0625;
global.BlockChance[i] = .0625;

global.PoisonResistance[i] = 0;
global.PoisonChance[i] = 0;
global.Poisoned[i] = false;

i+=1;


//Character3
global.ID[i] = 3;
global.Name[i] = 'CIERA';
global.Class[i] = 'HEAL';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 11;
global.MaxHealth[i] = 11;
global.Magic[i] = 10;
global.MaxMagic[i] = 10;
global.Attack[i] = 9;
global.Defense[i] = 5;
global.Agility[i] = 5;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'human';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 0;//Promoted? 0 = no, 1 = yes
global.Kills[i] = 0;
global.Defeats[i] = 0;
global.Turns[i] = 0; //Default number of Turns a player gets per round. (Must be at least 1) Should you wish for objects that dont move, (Maybe like a wall?) They would still have 1 turn and would be selected by the cursor, however you can always set their AI to "Do nothing"
global.AttackArea[i] = 1; //Default attack area

//Magic
global.Spells[i,1] = 'Heal';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 1;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 3;
global.Items[i,2] = 10;
global.Items[i,3] = 11;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
global.Equipped_Item[i]= 2;

global.IsDead[i] = false;
global.LevelScheme[i] = 3;
//Resistances and Chances
global.CounterChance[i] = .0625;// 1/16
global.DoubleChance[i] = .0625;
global.CritChance[i] = .0625;
global.MagicCritChance[i] = .0625;
global.BlockChance[i] = .0625;

global.PoisonResistance[i] = 0;
global.PoisonChance[i] = 0;
global.Poisoned[i] = false;

i+=1;




//Character4
global.ID[i] = 4;
global.Name[i] = 'KIRA';
global.Class[i] = 'THIF';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 12;
global.MaxHealth[i] = 12;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 9;
global.Defense[i] = 5;
global.Agility[i] = 6;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 1; //For archers, whats the subtraction range.
global.MovementType[i] = 'elf';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 0;//Promoted? 0 = no, 1 = yes
global.Kills[i] = 0;
global.Defeats[i] = 0;
global.Turns[i] = 0; //Default number of Turns a player gets per round. (Must be at least 1) Should you wish for objects that dont move, (Maybe like a wall?) They would still have 1 turn and would be selected by the cursor, however you can always set their AI to "Do nothing"
global.AttackArea[i] = 1; //Default attack area

//Magic
global.Spells[i,1] = 'none';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 0;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 4;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
global.Equipped_Item[i]= 0;

global.IsDead[i] = false;
global.LevelScheme[i] = 4;
//Resistances and Chances
global.CounterChance[i] = .0625;// 1/16
global.DoubleChance[i] = .0625;
global.CritChance[i] = .0625;
global.MagicCritChance[i] = .0625;
global.BlockChance[i] = .0625;

global.PoisonResistance[i] = 0;
global.PoisonChance[i] = 0;
global.Poisoned[i] = false;

i+=1;




//Character5
global.ID[i] = 5;
global.Name[i] = 'KARINA';
global.Class[i] = 'MAGE';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 11;
global.MaxHealth[i] = 11;
global.Magic[i] = 7;
global.MaxMagic[i] = 7;
global.Attack[i] = 5;
global.Defense[i] = 4;
global.Agility[i] = 8;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'human';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 0;//Promoted? 0 = no, 1 = yes
global.Kills[i] = 0;
global.Defeats[i] = 0;
global.Turns[i] = 0; //Default number of Turns a player gets per round. (Must be at least 1) Should you wish for objects that dont move, (Maybe like a wall?) They would still have 1 turn and would be selected by the cursor, however you can always set their AI to "Do nothing"
global.AttackArea[i] = 1; //Default attack area

//Magic
global.Spells[i,1] = 'Blaze';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 1;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 5;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
global.Equipped_Item[i]= 0;

global.IsDead[i] = false;
global.LevelScheme[i] = 5;
//Resistances and Chances
global.CounterChance[i] = .0625;// 1/16
global.DoubleChance[i] = .0625;
global.CritChance[i] = .0625;
global.MagicCritChance[i] = .0625;
global.BlockChance[i] = .0625;

global.PoisonResistance[i] = 0;
global.PoisonChance[i] = 0;
global.Poisoned[i] = false;

i+=1;



//Character6
global.ID[i] = 6;
global.Name[i] = 'PHILIP';
global.Class[i] = 'KNT';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 8;
global.MaxHealth[i] = 8;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 8;
global.Defense[i] = 6;
global.Agility[i] = 5;
global.MoveRange[i] = 7;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'centaur';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 0;//Promoted? 0 = no, 1 = yes
global.Kills[i] = 0;
global.Defeats[i] = 0;
global.Turns[i] = 0; //Default number of Turns a player gets per round. (Must be at least 1) Should you wish for objects that dont move, (Maybe like a wall?) They would still have 1 turn and would be selected by the cursor, however you can always set their AI to "Do nothing"
global.AttackArea[i] = 1; //Default attack area

//Magic
global.Spells[i,1] = 'none';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 0;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 6;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
global.Equipped_Item[i]= 0;

global.IsDead[i] = false;
global.LevelScheme[i] = 6;
//Resistances and Chances
global.CounterChance[i] = .0625;// 1/16
global.DoubleChance[i] = .0625;
global.CritChance[i] = .0625;
global.MagicCritChance[i] = .0625;
global.BlockChance[i] = .0625;

global.PoisonResistance[i] = 0;
global.PoisonChance[i] = 0;
global.Poisoned[i] = false;

i+=1;