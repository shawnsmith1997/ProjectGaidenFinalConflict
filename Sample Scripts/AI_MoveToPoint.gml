var Character, Target;

Character = argument0;
Target = argument1;



//Moves character to the target location
with(Character){
    //if already there
    if(x = Target.x && y = Target.y){
        //End_Turn(self.id);//Change to something else later
        event_perform(ev_other,ev_end_of_path);//This will either attack or end turn
    }
    else{//we have to pathfind
        Temp = 24;//Timer for the move sound. (Tile size)
        AStar_init(global.RoomCellWidth,global.RoomCellHeight,24,24,0,0,0,0,-2,-2,0,0);
        myPath = -1;
        with ( objCell ){
            if ( Reachable ){
                AStar_setBlocked(x,y,0);
            }
            else{
                AStar_setBlocked(x,y,1);
            }
        }
        myPath = AStar_findPath(x,y,Target.x,Target.y,0);
        
        State = 'Pathfinding';
        path_start(myPath,3,0,0);
        xstart = x;
        ystart = y;
    }
}