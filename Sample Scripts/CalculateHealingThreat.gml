var Character, Target, Threat, Distance, Damage, myMoveRange;
Character = argument0;
Target = argument1;
Threat = 0;

//Distance = Find_Distance(Character.x,Character.y,Target.x,Target.y);//Subtract range from this

if(Target.MaxHealth > Target.Health){
    Threat += Target.MaxHealth - Target.Health;
}

//Threat += ((1.5*Threat) - (2.5*Distance));
/*myMoveRange = Get_Battle_Stat_Total(Character, 'MoveRange');
if (myMoveRange < Distance - 2){
    Threat = 0;
}*/

if (Target.MaxHealth == Target.Health){
    Threat = 0;
}

if(Threat < 1){
    Threat = 1;
}


return(Threat);

/*
var Character, Target, Threat, Distance, Damage, myMoveRange;
Character = argument0;
Target = argument1;
Threat = 0;

Distance = Find_Distance(Character.x,Character.y,Target.x,Target.y);//Subtract range from this

if(Target.MaxHealth > Target.Health){
    Threat += Target.MaxHealth - Target.Health;
}

Threat += ((1.5*Threat) - (2.5*Distance));
/*myMoveRange = Get_Battle_Stat_Total(Character, 'MoveRange');
if (myMoveRange < Distance - 2){
    Threat = 0;
}*/
/*
if (Target.MaxHealth == Target.Health){
    Threat = 0;
}

if(Threat < 1){
    Threat = 1;
}


return(Threat);*/
