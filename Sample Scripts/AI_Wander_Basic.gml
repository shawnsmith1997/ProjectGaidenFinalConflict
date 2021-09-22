//Makes enemies randomly 'wander' the map.

var Character;//Guy doing the pathfinding
Character = argument0;
//WanderDistance = argument1;
//MaxSpeed = argument2;

with(Character){
    var Target;
    Target = Get_Wander_AI_Targets(self.id);
    
    if((x = Target.x)&&(y = Target.y)){//Not able to go anywhere, just stay put
        End_Turn(self.id);//ends turn where they currently stand
    }
    else{
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
        
        //shrink path to 3 tiles max
        while(path_get_number(myPath) > 4){
            path_delete_point(myPath,path_get_number(myPath)-1);
        }
        
        while(true){
            if(instance_position(path_get_point_x(myPath,(path_get_number(myPath)-1)),path_get_point_y(myPath,(path_get_number(myPath)-1)),objGuy)!= noone){
                path_delete_point(myPath,path_get_number(myPath)-1);
                if(path_get_number(myPath) = 0){
                    //Not able to go anywhere, just stay put
                    direction = 270;
        
                    Active = false;
                    image_index = BattleControler.image_index; //keeps every character marching in sync
                    ResetTiles();
                    with(BattleControler){
                        State = 'Stay';
                        LEPanDirection = 'out';
                        sound_play(MenuPanSound);
                    }
                    AStar_free();
                    break;
                }
            }
            else{
                State = 'Pathfinding';
                path_start(myPath,3,0,0);
                xstart = x;
                ystart = y;
                break;//exit loop
            }
        }
    }
}