//global.SaveSlot = 0;
global.LastSaveRoom = 0;
global.CutsceneFlag = 0;
global.CastEnd = 0;
global.inBattle = 0;
global.battleID = 1;
global.Battle13Water = 0;
global.PanEnemy = 0;
global.target = 0;
for (j=0; j< 40; j++){
global.ChestLooted[j] = 0;//keeps track of chests being looted or not. (1 is looted)
}

for (k=0; k< 20; k++){
global.Cursed[k] = false;
}

//This is used to define all the global variables
//for all of the force members and other stuff.
var i; //Used so you dont have to replace 50+ array values every time you make a new character.
i = 1;

//Main Settings
//global.GameSpeed = 4;
global.healTarget = 0;
global.Gold = 1000;
global.StoryState = 0;
global.currentArea = 0;
global.CurrentBattle = 0;
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
global.Name[i] = 'IAN';
global.Class[i] = 'SDMN';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 12;
global.MaxHealth[i] = 12;
global.Magic[i] = 8;
global.MaxMagic[i] = 8;
global.Attack[i] = 10;
global.Defense[i] = 6;
global.Agility[i] = 5;
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
global.Spells[i,1] = 'Egress';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 1;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 1;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
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
global.Name[i] = 'MEAD';
global.Class[i] = 'KNT';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 11;
global.MaxHealth[i] = 11;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 9;
global.Defense[i] = 4;
global.Agility[i] = 4;
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
global.Items[i,1] = 7;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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
global.Name[i] = 'SONETTE';
global.Class[i] = 'ARCR';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 10;
global.MaxHealth[i] = 10;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 7;
global.Defense[i] = 5;
global.Agility[i] = 4;
global.MoveRange[i] = 6;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 1; //For archers, whats the subtraction range.
global.MovementType[i] = 'human';
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
global.Items[i,1] = 2;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
global.Equipped_Item[i]= 0;

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
global.Name[i] = 'PAIGE';
global.Class[i] = 'DWF';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 7;
global.MaxHealth[i] = 7;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 10;
global.Defense[i] = 7;
global.Agility[i] = 3;
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
global.Spells[i,1] = 'none';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 0;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 25;
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
global.Name[i] = 'HAWEL';
global.Class[i] = 'MAGE';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 8;
global.MaxHealth[i] = 8;
global.Magic[i] = 8;
global.MaxMagic[i] = 8;
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
global.Spells[i,1] = 'Blaze';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 1;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 3;
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
global.Name[i] = 'CYNTHIA';
global.Class[i] = 'Heal';
global.Level[i] = 4;
global.Experience[i] = 0;
global.Health[i] = 12;
global.MaxHealth[i] = 12;
global.Magic[i] = 6;
global.MaxMagic[i] = 6;
global.Attack[i] = 8;
global.Defense[i] = 7;
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


global.ID[i] = 7;
global.Name[i] = 'KNUCKLES';
global.Class[i] = 'MONK';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 11;
global.MaxHealth[i] = 11;
global.Magic[i] = 6;
global.MaxMagic[i] = 6;
global.Attack[i] = 8;
global.Defense[i] = 4;
global.Agility[i] = 3;
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

/*global.Spells[i,1] = 'Heal';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 1;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;*/

//Items
global.Items[i,1] = 17;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
global.Equipped_Item[i]= 0;

global.IsDead[i] = false;
global.LevelScheme[i] = 7;
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

//Character8


global.ID[i] = 8;
global.Name[i] = 'RUBURAN';
global.Class[i] = 'THIF';
global.Level[i] = 5;
global.Experience[i] = 0;
global.Health[i] = 13;
global.MaxHealth[i] = 13;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 20;
global.Defense[i] = 9;
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
global.Spells[i,1] = 'none';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 0;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 13;
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


//Character9


global.ID[i] = 9;
global.Name[i] = 'KIDDO';
global.Class[i] = 'BDMN';
global.Level[i] = 8;
global.Experience[i] = 0;
global.Health[i] = 20;
global.MaxHealth[i] = 20;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 24;
global.Defense[i] = 14;
global.Agility[i] = 10;
global.MoveRange[i] = 6;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'flying';
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
global.Items[i,1] = 1;
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

//Sylvia

global.ID[i] = 10;
global.Name[i] = 'SYLVIA';
global.Class[i] = 'KNT';
global.Level[i] = 9;
global.Experience[i] = 0;
global.Health[i] = 22;
global.MaxHealth[i] = 22;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 31;
global.Defense[i] = 17;
global.Agility[i] = 11;
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
global.Items[i,1] = 7;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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


//Julia

global.ID[i] = 11;
global.Name[i] = 'JULIA';
global.Class[i] = 'BDMN';
global.Level[i] = 9;
global.Experience[i] = 0;
global.Health[i] = 21;
global.MaxHealth[i] = 21;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 29;
global.Defense[i] = 15;
global.Agility[i] = 10;
global.MoveRange[i] = 6;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'flying';
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
global.Items[i,1] = 1;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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

global.ID[i] = 12;
global.Name[i] = 'ERIC';
global.Class[i] = 'BDMN';
global.Level[i] = 2;
global.Experience[i] = 0;
global.Health[i] = 25;
global.MaxHealth[i] = 25;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 35;
global.Defense[i] = 20;
global.Agility[i] = 12;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'flying';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 1;//Promoted? 0 = no, 1 = yes
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
global.Items[i,1] = 1;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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

global.ID[i] = 13;
global.Name[i] = 'ERIC';
global.Class[i] = 'BDMN';
global.Level[i] = 2;
global.Experience[i] = 0;
global.Health[i] = 25;
global.MaxHealth[i] = 25;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 35;
global.Defense[i] = 20;
global.Agility[i] = 12;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'centaur';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 1;//Promoted? 0 = no, 1 = yes
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
global.Items[i,1] = 7;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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

global.ID[i] = 14;
global.Name[i] = 'ERIC';
global.Class[i] = 'BDMN';
global.Level[i] = 2;
global.Experience[i] = 0;
global.Health[i] = 25;
global.MaxHealth[i] = 25;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 35;
global.Defense[i] = 20;
global.Agility[i] = 12;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'centaur';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 1;//Promoted? 0 = no, 1 = yes
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
global.Items[i,1] = 7;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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

global.ID[i] = 15;
global.Name[i] = 'ERIC';
global.Class[i] = 'BDMN';
global.Level[i] = 2;
global.Experience[i] = 0;
global.Health[i] = 25;
global.MaxHealth[i] = 25;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 35;
global.Defense[i] = 20;
global.Agility[i] = 12;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'centaur';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 1;//Promoted? 0 = no, 1 = yes
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
global.Items[i,1] = 7;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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

global.ID[i] = 16;
global.Name[i] = 'ERIC';
global.Class[i] = 'BDMN';
global.Level[i] = 2;
global.Experience[i] = 0;
global.Health[i] = 25;
global.MaxHealth[i] = 25;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 35;
global.Defense[i] = 20;
global.Agility[i] = 12;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'centaur';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 1;//Promoted? 0 = no, 1 = yes
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
global.Items[i,1] = 7;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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

global.ID[i] = 17;
global.Name[i] = 'ERIC';
global.Class[i] = 'BDMN';
global.Level[i] = 2;
global.Experience[i] = 0;
global.Health[i] = 25;
global.MaxHealth[i] = 25;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 35;
global.Defense[i] = 20;
global.Agility[i] = 12;
global.MoveRange[i] = 5;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'centaur';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 1;//Promoted? 0 = no, 1 = yes
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
global.Items[i,1] = 7;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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

global.ID[i] = 18;
global.Name[i] = 'MAX';
global.Class[i] = 'HERO';
global.Level[i] = 12;
global.Experience[i] = 0;
global.Health[i] = 45;
global.MaxHealth[i] = 45;
global.Magic[i] = 25;
global.MaxMagic[i] = 25;
global.Attack[i] = 60;
global.Defense[i] = 40;
global.Agility[i] = 20;
global.MoveRange[i] = 6;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'human';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 1;//Promoted? 0 = no, 1 = yes
global.Kills[i] = 0;
global.Defeats[i] = 0;
global.Turns[i] = 0; //Default number of Turns a player gets per round. (Must be at least 1) Should you wish for objects that dont move, (Maybe like a wall?) They would still have 1 turn and would be selected by the cursor, however you can always set their AI to "Do nothing"
global.AttackArea[i] = 1; //Default attack area
global.LevelScheme[i] = 2;

//Magic
global.Spells[i,1] = 'Egress';
global.Spells[i,2] = 'Bolt';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 1;
global.SpellLevel[i,2] = 3;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 1;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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



global.ID[i] = 19;
global.Name[i] = 'Oddeye';
global.Class[i] = 'GDVL';
global.Level[i] = 12;
global.Experience[i] = 0;
global.Health[i] = 44;
global.MaxHealth[i] = 44;
global.Magic[i] = 31;
global.MaxMagic[i] = 31;
global.Attack[i] = 58;
global.Defense[i] = 36;
global.Agility[i] = 22;
global.MoveRange[i] = 6;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'human';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 1;//Promoted? 0 = no, 1 = yes
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
global.Items[i,1] = 1;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 1;
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

global.ID[i] = 21;
global.Name[i] = 'JOGURT';
global.Class[i] = 'JGRT';
global.Level[i] = 1;
global.Experience[i] = 0;
global.Health[i] = 1;
global.MaxHealth[i] = 1;
global.Magic[i] = 0;
global.MaxMagic[i] = 0;
global.Attack[i] = 1;
global.Defense[i] = 1;
global.Agility[i] = 1;
global.MoveRange[i] = 7;
global.AttackRange[i] = 1;
global.AttackLimit[i] = 0; //For archers, whats the subtraction range.
global.MovementType[i] = 'human';
global.In_Force[i] = false;//Did they join the team yet?
global.In_Battle_Party[i] = false;//Are they part of your active battle party?
global.Promoted[i] = 0;//Promoted? 0 = no, 1 = yes
global.Promoted[21] = 0;//Promoted? 0 = no, 1 = yes
global.Kills[i] = 0;
global.Defeats[i] = 0;
global.Turns[i] = 0; //Default number of Turns a player gets per round. (Must be at least 1) Should you wish for objects that dont move, (Maybe like a wall?) They would still have 1 turn and would be selected by the cursor, however you can always set their AI to "Do nothing"
global.AttackArea[i] = 1; //Default attack area
global.LevelScheme[i] = 20;

//Magic
global.Spells[i,1] = 'none';
global.Spells[i,2] = 'none';
global.Spells[i,3] = 'none';
global.Spells[i,4] = 'none';
global.SpellLevel[i,1] = 1;
global.SpellLevel[i,2] = 0;
global.SpellLevel[i,3] = 0;
global.SpellLevel[i,4] = 0;

//Items
global.Items[i,1] = 0;
global.Items[i,2] = 0;
global.Items[i,3] = 0;
global.Items[i,4] = 0;
global.Equipped_Weapon[i] = 0;
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
global.Cursed[i] = false;










ini_open("SFGFCSave"+string(global.SaveSlot)+".ini");

//Global Values
global.Gold = ini_read_real('Global', 'Gold', global.Gold);
global.inBattle = ini_read_real('Global', 'inBattle', global.inBattle);
global.StoryState = ini_read_real('Global', 'StoryState', global.StoryState);
global.currentArea = ini_read_real('Global', 'currentArea', global.currentArea);
global.CurrentBattle = ini_read_real('Global', 'CurrentBattle', global.CurrentBattle);
global.ForceMembers = ini_read_real('Global', 'ForceMembers', global.ForceMembers);
global.BattlePartyNumber = ini_read_real('Global', 'BattlePartyNumber', global.BattlePartyNumber);
global.LastSaveRoom = ini_read_real('Global', 'LastSaveRoom', global.LastSaveRoom);
global.battleID = ini_read_real('Global', 'BattleID', global.battleID);

for (i = 1; i < 21; i++)
{

//Character Strings
global.Name[i] = ini_read_string('Character'+string(i), 'Name', global.Name[i]);
global.Class[i] = ini_read_string('Character'+string(i), 'Class', global.Class[i]);
global.MovementType[i] = ini_read_string('Character'+string(i), 'MovementType', global.MovementType[i]);
global.Spells[i,1] = ini_read_string('Character'+string(i), 'Spells1', global.Spells[i,1]);
global.Spells[i,2] = ini_read_string('Character'+string(i), 'Spells2', global.Spells[i,2]);
global.Spells[i,3] = ini_read_string('Character'+string(i), 'Spells3', global.Spells[i,3]);
global.Spells[i,4] = ini_read_string('Character'+string(i), 'Spells4', global.Spells[i,4]);


//Character Values
global.ID[i] = ini_read_real('Character'+string(i), 'ID', global.ID[i]);
global.Level[i] = ini_read_real('Character'+string(i), 'Level', global.Level[i]);
global.Experience[i]= ini_read_real('Character'+string(i), 'Experience', global.Experience[i]);
global.Health[i] = ini_read_real('Character'+string(i), 'Health', global.Health[i]);
global.MaxHealth[i] = ini_read_real('Character'+string(i), 'MaxHealth', global.MaxHealth[i]);
global.Magic[i] = ini_read_real('Character'+string(i), 'Magic', global.Magic[i]);
global.MaxMagic[i] = ini_read_real('Character'+string(i), 'MaxMagic', global.MaxMagic[i]);
global.Attack[i] = ini_read_real('Character'+string(i), 'Attack', global.Attack[i]);
global.Defense[i] = ini_read_real('Character'+string(i), 'Defense', global.Defense[i]);
global.Agility[i] = ini_read_real('Character'+string(i), 'Agility', global.Agility[i]);
global.MoveRange[i] = ini_read_real('Character'+string(i), 'MoveRange', global.MoveRange[i]);
global.AttackRange[i] = ini_read_real('Character'+string(i), 'AttackRange', global.AttackRange[i]);
global.AttackLimit[i] = ini_read_real('Character'+string(i), 'AttackLimit', global.AttackLimit[i]);
global.Promoted[i] = ini_read_real('Character'+string(i), 'Promoted', global.Promoted[i]);
global.Kills[i] = ini_read_real('Character'+string(i), 'Kills', global.Kills[i]);
global.Defeats[i] = ini_read_real('Character'+string(i), 'Defeats', global.Defeats[i]);
global.Turns[i] = ini_read_real('Character'+string(i), 'Turns', global.Turns[i]);
global.AttackArea[i] = ini_read_real('Character'+string(i), 'AttackArea', global.AttackArea[i]);
global.LevelScheme[i] = ini_read_real('Character'+string(i), 'LevelScheme', global.LevelScheme[i]);
global.SpellLevel[i,1] = ini_read_real('Character'+string(i), 'SpellLevel1', global.SpellLevel[i,1]);
global.SpellLevel[i,2] = ini_read_real('Character'+string(i), 'SpellLevel2', global.SpellLevel[i,2]);
global.SpellLevel[i,3] = ini_read_real('Character'+string(i), 'SpellLevel3', global.SpellLevel[i,3]);
global.SpellLevel[i,4] = ini_read_real('Character'+string(i), 'SpellLevel4', global.SpellLevel[i,4]);
global.Items[i,1] = ini_read_real('Character'+string(i), 'Items1', global.Items[i,1]);
global.Items[i,2] = ini_read_real('Character'+string(i), 'Items2', global.Items[i,2]);
global.Items[i,3] = ini_read_real('Character'+string(i), 'Items3', global.Items[i,3]);
global.Items[i,4] = ini_read_real('Character'+string(i), 'Items4', global.Items[i,4]);
global.Equipped_Weapon[i]= ini_read_real('Character'+string(i), 'Equipped_Weapon', global.Equipped_Weapon[i]);
global.Equipped_Item[i] = ini_read_real('Character'+string(i), 'Equipped_Item', global.Equipped_Item[i]);
global.CounterChance[i] = ini_read_real('Character'+string(i), 'CounterChance', global.CounterChance[i]);
global.DoubleChance[i] = ini_read_real('Character'+string(i), 'DoubleChance', global.DoubleChance[i]);
global.CritChance[i] = ini_read_real('Character'+string(i), 'CritChance', global.CritChance[i]);
global.MagicCritChance[i] = ini_read_real('Character'+string(i), 'MagicCritChance', global.MagicCritChance[i]);
global.BlockChance[i] = ini_read_real('Character'+string(i), 'BlockChance', global.BlockChance[i]);
global.PoisonResistance[i] = ini_read_real('Character'+string(i), 'PoisonResistance', global.PoisonResistance[i]);
global.PoisonChance[i] = ini_read_real('Character'+string(i), 'PoisonChance', global.PoisonChance[i]);
global.IsDead[i] = ini_read_real('Character'+string(i), 'IsDead', global.IsDead[i]);
global.Poisoned[i] = ini_read_real('Character'+string(i), 'Poisoned', global.Poisoned[i]);
global.Cursed[i] = ini_read_real('Character'+string(i), 'Cursed', global.Cursed[i]);
global.In_Force[i] = ini_read_real('Character'+string(i), 'In_Force', global.In_Force[i]);
global.In_Battle_Party[i] = ini_read_real('Character'+string(i), 'In_Battle_Party', global.In_Battle_Party[i]);
}

for (j=0; j< 30; j++){
global.ChestLooted[j] = ini_read_real('Global'+string(j), 'Chest', global.ChestLooted[j]);
}



ini_close();
if (global.inBattle == 1){
    game_load("SFGFCSave"+string(global.SaveSlot));//Load in Battle
}
