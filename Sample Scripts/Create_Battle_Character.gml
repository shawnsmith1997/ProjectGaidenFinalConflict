//Assigns a force member to the Battle Object.
//Argument0 = How far into battle list. (Leader is position 1)

var Position;
Position = argument0;
//If we already have our entire party on the battlefield, return 0 (null character)
if(Position > global.BattlePartyNumber){
    return 0;
}
//If the character is not dead, return their ID
else if (global.IsDead[Position] = false){
    return global.BattleList[Position];
}
//Otherwise, return null
else{
    return 0;
}