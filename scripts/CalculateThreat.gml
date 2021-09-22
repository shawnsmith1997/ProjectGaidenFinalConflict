var Character, Target, Threat, Distance, Damage;
Character = argument0;
Target = argument1;
Threat = 0;

Distance = Find_Distance(Character.x,Character.y,Target.x,Target.y);//Subtract range from this

Damage = Calculate_Battle_Damage(Character,Target,0,0);
if(Damage > Target.Health){
    Threat += Target.MaxHealth;
}

Threat += ((1.5*Damage) - (2.5*Distance));
if(Threat < 1){
    Threat = 1;
}
return(Threat);
