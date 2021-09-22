/*  The one attack range function to rule them all...
    arg0 -- starting cell id
    arg1 -- Attack range
    arg2 -- Removal Range (for archer type characters) (-1 includes the tile the character is standing on)
    arg3 -- Select Type (Which type of char to select. 1 is player, 2 is enemy, 3 is both)
*/
//Down right Up Left

//Copy of the attack range function that only tests if a character can attack another
var _Target, Found_Guy;
_Target = argument4;
Found_Guy = false;

{
{
    var _start, _AttackRange, _SelectType, _RemovalRange;
    _start = argument0;
    _AttackRange = argument1;
    _RemovalRange = argument2;
    _SelectType = argument3;

    var _priorityOpen, _listClosed, _mapDist;
    _priorityOpen = ds_priority_create();
    _listClosed = ds_list_create();
    _mapDist = ds_map_create();
    
    ds_priority_add( _priorityOpen, _start, 0 );
    ds_map_add( _mapDist, _start, 0 );
    _start.Parent = 0;
    
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
                    
                    ii = instance_position(_current.Down.x,_current.Down.y,objGuy);
                    if(ii = _Target){
                            Found_Guy = true;
                    
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
        
        with ( _current.Right )
        {
            var _dist;
            _dist = _predist + AttackCost;
            if ( ds_list_find_index( _listClosed, id ) == -1 && AttackCost && _dist <= _AttackRange )
            {
                if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )))
                {
                    ds_priority_add( _priorityOpen, id, _dist );
                    ds_map_add( _mapDist, id, _dist );
                    Parent = _current;
                    var ii;
                    ii = instance_position(_current.Right.x,_current.Right.y,objGuy);
                    if(ii = _Target){
                            Found_Guy = true;
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

        with ( _current.Up )
        {
            var _dist;
            _dist = _predist + AttackCost;
            if ( ds_list_find_index( _listClosed, id ) == -1 && AttackCost && _dist <= _AttackRange )
            {
                if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )))
                {
                    ds_priority_add( _priorityOpen, id, _dist );
                    ds_map_add( _mapDist, id, _dist );
                    Parent = _current;
                    var ii;
                    ii = instance_position(_current.Up.x,_current.Up.y,objGuy);
                    if(ii = _Target){
                            Found_Guy = true;
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
        
        with ( _current.Left )
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
                    var ii;
                    ii = instance_position(_current.Left.x,_current.Left.y,objGuy);
                    if(ii = _Target){
                            Found_Guy = true;
                        
                    
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

//If the character is an archer or has a limit (cant attack things next to them) remove these tiles.
{// && (Cursor.NumberOfTargets != 0)
    if((argument2 != -1)){
    var _start, _AttackRange, _RemovalRange, _SelectType, _TargetsToRemove;
    _start = argument0;
    _RemovalRange = argument2;
    _SelectType = argument3;

    var _priorityOpen, _listClosed, _mapDist;
    _priorityOpen = ds_priority_create();
    _listClosed = ds_list_create();
    _mapDist = ds_map_create();
    
    ds_priority_add( _priorityOpen, _start, 0 );
    ds_map_add( _mapDist, _start, 0 );
    _start.Parent = 0;
    
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
            if ( ds_list_find_index( _listClosed, id ) == -1 && AttackCost && _predist + AttackCost <= _RemovalRange )
            {
                if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )))
                {
                    ds_priority_add( _priorityOpen, id, _dist );
                    ds_map_add( _mapDist, id, _dist );
                    Parent = _current;
                    
                    var ii;
                    ii = instance_position(_current.Down.x,_current.Down.y,objGuy);
                    if(ii = _Target){
                            Found_Guy = false; 
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
        with ( _current.Right )
        {
            var _dist;
            _dist = _predist + AttackCost;
            if ( ds_list_find_index( _listClosed, id ) == -1 && AttackCost && _dist <= _RemovalRange )
            {
                if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )))
                {
                    ds_priority_add( _priorityOpen, id, _dist );
                    ds_map_add( _mapDist, id, _dist );
                    Parent = _current;
                    var ii;
                    ii = instance_position(_current.Right.x,_current.Right.y,objGuy);
                    if(ii = _Target){
                            Found_Guy = false; 
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

        with ( _current.Up )
        {
            var _dist;
            _dist = _predist + AttackCost;
            if ( ds_list_find_index( _listClosed, id ) == -1 && AttackCost && _dist <= _RemovalRange )
            {
                if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )))
                {
                    ds_priority_add( _priorityOpen, id, _dist );
                    ds_map_add( _mapDist, id, _dist );
                    Parent = _current;
                    var ii;
                    ii = instance_position(_current.Up.x,_current.Up.y,objGuy);
                    if(ii = _Target){
                            Found_Guy = false; 
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
        
        with ( _current.Left )
        {
            var _dist;
            _dist = _predist + AttackCost;
            if ( ds_list_find_index( _listClosed, id ) == -1 && AttackCost && _predist + AttackCost <= _RemovalRange )
            {
                if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )))
                {
                    ds_priority_add( _priorityOpen, id, _dist );
                    ds_map_add( _mapDist, id, _dist );
                    Parent = _current;
                    var ii;
                    ii = instance_position(_current.Left.x,_current.Left.y,objGuy);
                    if(ii = _Target){
                            Found_Guy = false; 
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
    
    return Found_Guy;
}
}
}