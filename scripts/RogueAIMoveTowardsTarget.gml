//Finds the closest attackable target and moves towards them at X speed
//Pass in target type (enemy, ally, both)

var Character, TargetType, ClosestTarget, MinDistance, Speed;

Character = argument0;
Speed = argument1;
//TargetType = argument1;
//Speed = argument2;
MinDistance = 9999;//if you have a map over 10k tiles... you're crazy but you can change this number.
Closesttarget = Character; //Set closest target to self to avoid a possible issue.

//Figure out which target is closest to the character
with(objPlayer){
    var TempVar;
    TempVar = Find_Distance(Character.x, Character.y, x, y);
    if(Temp < MinDistance){
        MinDistance = TempVar;
        ClosestTarget = self.id;
    }
}

//Now Closest target should be found
//Makes enemies randomly 'wander' the map.
with(Character){
    if(MinDistance > 99){//if the target is more than 15 spaces away (limited because of lag issues) DEFAULT : 15
        End_Turn(Character);//End turn
    }
    else{//Otherwise pathfind slowly
        Temp = 24;//Timer for the move sound. (Tile size)
        AStar_init(global.RoomCellWidth,global.RoomCellHeight,24,24,0,0,0,0,-2,-2,0,0);
        myPath = -1;
        //with every tile
        with(objCell){//if character cannot move there, block it.
            if(FindNewCost(x,y,Character,TerrainType,true)= 0){
                AStar_setBlocked(x,y,1);
            }
            else{
                AStar_setBlocked(x,y,0);
            }
        }
        myPath = AStar_findPath(x,y,ClosestTarget.x,ClosestTarget.y,0);
        
        //shrink path to 2 tiles max (Change to X)
        while(path_get_number(myPath) > Speed){
            path_delete_point(myPath,path_get_number(myPath)-1);
        }
        if(myPath = -1){//If we end up with a blocked path, stay put
            //Not able to go anywhere, just stay put
            End_Turn(self.id);
        }
        else{
            while(true){//Make sure we dont stay on an ally or a blocked tile.
                if((instance_position(path_get_point_x(myPath,(path_get_number(myPath)-1)),path_get_point_y(myPath,(path_get_number(myPath)-1)),objGuy)!= noone)||(!instance_position(path_get_point_x(myPath,(path_get_number(myPath)-1)),path_get_point_y(myPath,(path_get_number(myPath)-1)),objCell).Reachable)){
                    path_delete_point(myPath,path_get_number(myPath)-1);
                    if(path_get_number(myPath) = 0){//If we end up with a 0 path, stay put.
                        //Not able to go anywhere, just stay put
                        End_Turn(self.id);
                        break;
                    }
                }
                else{//otherwise pathfind.
                    State = 'Pathfinding';
                    path_start(myPath,3,0,0);
                    xstart = x;
                    ystart = y;
                    break;//exit loop
                }
            }
        }
    }
}
