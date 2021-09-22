//Causes status effects to target
var Spell, SpellLevel, Target, Message;
Spell = argument0;
SpellLevel = argument1;
Target = argument2;
Message = '';//print out status effects

//Cure Poison
if(Get_Spell_Stats(Spell,SpellLevel,"CurePoison")){
    if(Target.Poisoned){
        Target.Poisoned = false;
        Message += WordWrap(string(Target.Name)+' is no longer poisoned.',200,'#',false);
    }
    else{
        Message += WordWrap('But nothing happens...',200,'#',false);
    }
}


//Test for poison
/*
if(random_range(0,1) < LowCap(Get_Battle_Stat_Total(Character,'PoisonChance')-Get_Battle_Stat_Total(Target,'PoisonResistance'),0)){
    Target.Poisoned = true;
    Message += WordWrap('#'+string(Target.Name)+' was poisoned.',200,'#',false);
}*/

return Message;