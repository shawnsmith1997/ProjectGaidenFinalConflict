//determines what AI script to call based on what battle we're on
var Character;
Character = argument0;

if(room = BattleRoom01 || room = BattleRoom02 || BattleRoom03 || BattleRoom04 || BattleRoom05|| BattleRoom06 | BattleRoom07 || BattleRoom08|| BattleRoom09 || BattleRoom10 ){
    Battle_AI_Script04(Character);
}

else if(room = BattleRoom11 || room = BattleRoom12 || BattleRoom13 || BattleRoom14 || BattleRoom15 || BattleRoom16){
    Battle_AI_Script04(Character);
}

else if(room = BattleRoom17 || room = BattleRoom18 || BattleRoom19 || BattleRoom20 || BattleRoom21){
    Battle_AI_Script04(Character);
}

else if(room = BattleRoom22){
    Battle_AI_Script04(Character);
}

//else if(room = room40){
    //Demo_AI_Script02(Character);
//}
else if(room = DemoRoom){
    Demo_AI_Script01(Character);
}
else {//if no room is set, default to 'do nothing' so the game doesnt break
    Battle_AI_Script04(Character);
}