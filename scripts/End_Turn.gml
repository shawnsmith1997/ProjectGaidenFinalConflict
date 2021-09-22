//Most turns end in this manor. Some however, may not, 
//so this will not be able to be used in those circumstances

var Character;
Character = argument0;

with(Character){
    direction = 270;//Face character downwards
    
    Active = false;
    image_index = BattleControler.image_index; //keeps every character marching in sync
    depth = -10;
    ResetTiles();
    with(BattleControler){
        State = 'Stay';
        LEPanDirection = 'out';
        sound_play(MenuPanSound);
    }
    AStar_free();//Won't always be needed, but it's here as a safeguard
}