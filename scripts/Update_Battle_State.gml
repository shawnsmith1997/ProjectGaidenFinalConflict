//updates the state of the battle
var NewAI;
NewAI = 1;
with(objPlayer){
    var ii;
    ii = instance_position(x,y,objCell);
    if(ii.TriggerState > NewAI){
        NewAI = ii.TriggerState;
    }
}

global.BattleState = NewAI;