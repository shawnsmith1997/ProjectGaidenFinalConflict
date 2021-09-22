//ok, this script is for calculating experience gains
//XP = (Z*D/M)
//Z = max experience obtainable based on level difference (or 25 if healing)
//D = Damage done
//M = Max health of target
//Min = minimum obtainable xp. (10 for healing, 1 for attacking)

var Z, D, M, Min, EXP, Bonus;
Z = argument0;
D = argument1;
M = argument2;
Min = argument3;
Bonus = argument4; //if the character dies, bonus EXP (Z) is added

EXP = (Z*D/M) + (Bonus * Z);

//If we have more than Z, set it to Z
if(EXP > Z){
    EXP = Z;
}
//if we are less than the minimum XP allowed
if(EXP < Min){
    EXP = Min;
}

return round(EXP);