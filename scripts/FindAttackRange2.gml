/*  The one attack range function to rule them all...
    arg0 -- starting cell id
    arg1 -- Attack range
    arg2 -- Removal Range (for archer type characters) (-1 includes the tile the character is standing on)
    arg3 -- Select Type (Which type of char to select. 1 is player, 2 is enemy, 3 is both)
*/
//Down right Up Left
{
{
    var _start, _AttackRange, _SelectType, _RemovalRange;
    _start = argument0;
    _AttackRange = argument1;
    _RemovalRange = argument2;
    _SelectType = argument3;
    Cursor.NumberOfTargets = 0;

    var _priorityOpen, _listClosed, _mapDist;
    _priorityOpen = ds_priority_create();
    _listClosed = ds_list_create();
    _mapDist = ds_map_create();
    
    ds_priority_add( _priorityOpen, _start, 0 );
    ds_map_add( _mapDist, _start, 0 );
    _start.Parent = 0;
    
    if(_RemovalRange = -1){
    _start.Attackable = true;
    var ii;
    ii = instance_position(_start.x,_start.y,objGuy);
    if(ii != noone){
    if(CheckSelectedGuy(_SelectType, ii)){
    Cursor.AttackList[Cursor.NumberOfTargets] = ii;
    Cursor.NumberOfTargets += 1;
    }
    }
    }
    else{
        _start.Attackable = false;
    }
    
    while ( ds_priority_size( _priorityOpen ) )
    {
        var _current;
        _current = ds_priority_delete_min( _priorityOpen );
        ds_list_add( _listClosed, _current );
        
        var _predist;
        _predist = ds_map_find_value( _mapDist, _current );
        
        with ( _current.Down )
        {
            var _dist;
            _dist = _predist + AttackCost;
            if ( ds_list_find_index( _listClosed, id ) == -1 && AttackCost && _predist + AttackCost <= _AttackRange )
            {
                if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )))
                {
                    ds_priority_add( _priorityOpen, id, _dist );
                    ds_map_add( _mapDist, id, _dist );
                    Parent = _current;
                    Attackable = true;
                    var ii;
                    ii = instance_position(_current.Down.x,_current.Down.y,objGuy);
                    if(ii != noone){
                    if(CheckSelectedGuy(_SelectType, ii)){
                    Cursor.AttackList[Cursor.NumberOfTargets] = ii;
                    Cursor.NumberOfTargets += 1;
                    }
                    }
                    
                }
                else
                {
                    if ( _dist < ds_priority_find_priority( _mapDist, id ) )
                    {
                        ds_priority_change_priority( _priorityOpen, id, _dist );
                        ds_map_replace( _mapDist, id, _dist );
                        Parent = _current;
                    }
                }
            }
        }
}        
    
    
    ds_priority_destroy( _priorityOpen );
    ds_list_destroy( _listClosed );
    ds_map_destroy( _mapDist );
}


}