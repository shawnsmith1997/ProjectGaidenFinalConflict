//global.SaveSlot = 0;

ini_open("SFGFCSave"+string(global.SaveSlot)+".ini");

global.LastSaveRoom = room;

//Global Values
ini_write_real('Global', 'inBattle', global.inBattle);
ini_write_real('Global', 'Gold', global.Gold);
ini_write_real('Global', 'StoryState', global.StoryState);
ini_write_real('Global', 'currentArea', global.currentArea);
ini_write_real('Global', 'CurrentBattle', global.CurrentBattle);
ini_write_real('Global', 'ForceMembers', global.ForceMembers);
ini_write_real('Global', 'BattlePartyNumber', global.BattlePartyNumber);
ini_write_real('Global', 'BattleID', global.battleID);
ini_write_real('Global', 'LastSaveRoom', global.LastSaveRoom);

for (i = 1; i < 21; i++)
{

//Character Strings
ini_write_string('Character'+string(i), 'Name', global.Name[i]);
ini_write_string('Character'+string(i), 'Class', global.Class[i]);
ini_write_string('Character'+string(i), 'MovementType', global.MovementType[i]);
ini_write_string('Character'+string(i), 'Spells1', global.Spells[i,1]);
ini_write_string('Character'+string(i), 'Spells2', global.Spells[i,2]);
ini_write_string('Character'+string(i), 'Spells3', global.Spells[i,3]);
ini_write_string('Character'+string(i), 'Spells4', global.Spells[i,4]);


//Character Values
ini_write_real('Character'+string(i), 'ID', global.ID[i]);
ini_write_real('Character'+string(i), 'Level', global.Level[i]);
ini_write_real('Character'+string(i), 'Experience', global.Experience[i]);
ini_write_real('Character'+string(i), 'Health', global.Health[i]);
ini_write_real('Character'+string(i), 'MaxHealth', global.MaxHealth[i]);
ini_write_real('Character'+string(i), 'Magic', global.Magic[i]);
ini_write_real('Character'+string(i), 'MaxMagic', global.MaxMagic[i]);
ini_write_real('Character'+string(i), 'Attack', global.Attack[i]);
ini_write_real('Character'+string(i), 'Defense', global.Defense[i]);
ini_write_real('Character'+string(i), 'Agility', global.Agility[i]);
ini_write_real('Character'+string(i), 'MoveRange', global.MoveRange[i]);
ini_write_real('Character'+string(i), 'AttackRange', global.AttackRange[i]);
ini_write_real('Character'+string(i), 'AttackLimit', global.AttackLimit[i]);
ini_write_real('Character'+string(i), 'Promoted', global.Promoted[i]);
ini_write_real('Character'+string(i), 'Kills', global.Kills[i]);
ini_write_real('Character'+string(i), 'Defeats', global.Defeats[i]);
ini_write_real('Character'+string(i), 'Turns', global.Turns[i]);
ini_write_real('Character'+string(i), 'AttackArea', global.AttackArea[i]);
ini_write_real('Character'+string(i), 'LevelScheme', global.LevelScheme[i]);
ini_write_real('Character'+string(i), 'SpellLevel1', global.SpellLevel[i,1]);
ini_write_real('Character'+string(i), 'SpellLevel2', global.SpellLevel[i,2]);
ini_write_real('Character'+string(i), 'SpellLevel3', global.SpellLevel[i,3]);
ini_write_real('Character'+string(i), 'SpellLevel4', global.SpellLevel[i,4]);
ini_write_real('Character'+string(i), 'Items1', global.Items[i,1]);
ini_write_real('Character'+string(i), 'Items2', global.Items[i,2]);
ini_write_real('Character'+string(i), 'Items3', global.Items[i,3]);
ini_write_real('Character'+string(i), 'Items4', global.Items[i,4]);
ini_write_real('Character'+string(i), 'Equipped_Weapon', global.Equipped_Weapon[i]);
ini_write_real('Character'+string(i), 'Equipped_Item', global.Equipped_Item[i]);
ini_write_real('Character'+string(i), 'CounterChance', global.CounterChance[i]);
ini_write_real('Character'+string(i), 'DoubleChance', global.DoubleChance[i]);
ini_write_real('Character'+string(i), 'CritChance', global.CritChance[i]);
ini_write_real('Character'+string(i), 'MagicCritChance', global.MagicCritChance[i]);
ini_write_real('Character'+string(i), 'BlockChance', global.BlockChance[i]);
ini_write_real('Character'+string(i), 'PoisonResistance', global.PoisonResistance[i]);
ini_write_real('Character'+string(i), 'PoisonChance', global.PoisonChance[i]);
ini_write_real('Character'+string(i), 'IsDead', global.IsDead[i]);
ini_write_real('Character'+string(i), 'Poisoned', global.Poisoned[i]);
ini_write_real('Character'+string(i), 'Cursed', global.Cursed[i]);
ini_write_real('Character'+string(i), 'In_Force', global.In_Force[i]);
ini_write_real('Character'+string(i), 'In_Battle_Party', global.In_Battle_Party[i]);
}

for (j=0; j< 30; j++){
ini_write_real('Global'+string(j), 'Chest', global.ChestLooted[j]);
}

ini_close();
if (global.inBattle == 1){
    game_save("SFGFCSave"+string(global.SaveSlot));//Load in Battle
}
