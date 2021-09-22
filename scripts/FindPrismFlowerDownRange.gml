/*  The one attack range function to rule them all...
    arg0 -- starting cell id
    arg1 -- Attack range
    arg2 -- Removal Range (for archer type characters) (-1 includes the tile the character is standing on)
    arg3 -- Select Type (Which type of char to select. 1 is player, 2 is enemy, 3 is both)
*/
//Down right Up Left
var _start, _SelectType,_Faction,;
_start = argument0;//initial tile
_Faction = argument1;//our faction
_SelectType = argument2;//target faction

Cursor.NumberOfTargets = 0;
_start.Attackable = false;

var _current, _breakLoop;
_current = _start;
_breakLoop = false;

while((!_breakLoop) && (_current.y+24<room_height)){
    _current = _current.Down;
    with(_current){
        Attackable = true;
        var ii;
        ii = instance_position(x,y,objGuy);
        if(ii != noone){
            if(CheckSelectedGuy(_SelectType, ii)){
                    Cursor.AttackList[Cursor.NumberOfTargets] = ii;
                    Cursor.NumberOfTargets += 1;
            }
        }
        if(TerrainType = 'wall'){
            _breakLoop = true;
        }
    }
}
