//ok, this script is for calculating battle damage.
//Should you come up with more resistances ect later, you can add those to this code.
var Character, Target, Damage, Critical, Counter;
Character = argument0;
Target = argument1;
Critical = argument2;
Counter = argument3;


if(HasStatusHit(Character) && global.LegacyStatusEffect){//Because people wanted the legacy SF mechanic, SE's override crit.
    Critical = false;
}

Damage = round((((Get_Battle_Stat_Total(Character,'Attack')*(1 + .25*Critical))-(Get_Battle_Stat_Total(Target,'Defense')))*(1 - .75 * Counter)) * (1-FindLandEffect(Target.MovementType,instance_position(Target.x,Target.y,objCell).TerrainType)));
Damage -= (Damage * round(random_range(0,.25)));//is this needed? It will always round to 0 doing nothing!

return Damage;