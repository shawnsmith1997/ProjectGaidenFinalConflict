//final xp based on total
var EXP, Z;
EXP = argument0;
Z = argument1;

if(EXP > Z){//if we go over the cap, set it to the cap
    EXP = Z;
}

//if(BattleCutsceneControler.Action != 'Magic'){//dont remove points if we casted a spell // change this to heal!
    EXP -= round(random_range(0,2));//Subtract 0-2 from total EXP
//}

if(EXP < BattleCutsceneControler.MinimumXP){//if we are under the cap, set it to min
    EXP = BattleCutsceneControler.MinimumXP;
}

return round(EXP);