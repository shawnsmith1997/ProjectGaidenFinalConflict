//test if the character can do an ailment
//This is used for legacy SF

var Character, HasAffliction;
Character = argument0;
HasAffliction = false;

if(Get_Battle_Stat_Total(Character,'PoisonChance') > 0){
    HasAffliction = true;
}

return HasAffliction;