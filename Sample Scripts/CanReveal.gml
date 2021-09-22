//tests if we have to reveal any hidden units
var Character;//, TempVar;
Character = argument0;
//TempVar = global.BattleState;
//global.SomeVariable = global.BattleState;
with(Character){
    if(global.BattleState >= RevealID){//is it time to reveal?
        if(!place_meeting(round(x),round(y),objGuy)){//is there another character on this tile?
            return true;
        }
    }
}
return false;