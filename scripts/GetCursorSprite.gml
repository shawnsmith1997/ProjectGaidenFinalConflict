//sets the size of the cursor
var size;
sound_stop(battle_cutscene_BGM);
//if (global.battleID = 4){
//if !audio_is_playing(BattleOnShip){
//sound_loop(BattleOnShip);
//}
//}
size = argument0;

if(size >= 3){
    Cursor.sprite_index = Cursor3Sprite;
}
else if(size = 2){
    Cursor.sprite_index = Cursor2Sprite;
}
else{
    Cursor.sprite_index = CursorSprite;
}