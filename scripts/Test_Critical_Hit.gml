//Tests if we get a critical hit or not.
var Character;
Character = argument0;
//get stat total critical hit
//Default SF2 has crits set to either 1/32, 1/16, 1/8, or 1/4;
//if(Random number between 0 and 1) >= 1-crit chance{crit hit}

if(random_range(0,1)>=(1-Get_Battle_Stat_Total(Character,'CritChance'))){
    return true;
}
return false;