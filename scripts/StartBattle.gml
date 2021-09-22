with (objGuy){//March every guy in sync with battle controler.
    image_index = -1;
    image_speed = .0625;
    image_index = BattleControler.image_index;
}
Cursor.State = 'LookingToPathfind'; //Start the battle process. :D
Cursor.visible = false;
global.DeathFlag = false;
global.VictoryFlag = false;
global.BattleState = 1;
with(Cursor){
    alarm[0] = 2;
}