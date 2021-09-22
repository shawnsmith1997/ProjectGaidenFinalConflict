//Causes status effects to target
var Character, Target, Message;
Character = argument0;
Target = argument1;
Message = '';//print out status effects

//temp = random_range(0,1);

//global.ZRange = temp;
//global.ZChance = Get_Battle_Stat_Total(Character,'PoisonChance');
//global.ZRes = Get_Battle_Stat_Total(Target,'PoisonResistance');
//global.ZTotal = LowCap(Get_Battle_Stat_Total(Character,'PoisonChance')-Get_Battle_Stat_Total(Target,'PoisonResistance'),0);
//Test for poison
if(random_range(0,1) < LowCap(Get_Battle_Stat_Total(Character,'PoisonChance')-Get_Battle_Stat_Total(Target,'PoisonResistance'),0)){
    Target.Poisoned = true;
    Message += WordWrap('#'+string(Target.Name)+' was poisoned.',200,'#',false);
}

return Message;