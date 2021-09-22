/*
This is the main prism flower function.
Similar to attack, but it picks the best direction to
fire its shot.
*/

var Character, MaxThreat, Tile, ThreatType, AIDone;// ThreatDirection;
Character = argument0;//Guy doing the attacking
ThreatType = argument1;//which threat function to look at
AIDone = argument2;//are we already performing an action? if so, this script does nothing
MaxThreat = 0;
Tile = noone;

if(!AIDone){//if we didnt already trigger an AI task
    with(objCell){
        if(Reachable){
            //find attack range
            //show_message("testing tile");
            if((instance_position(x,y,objGuy) = noone)||((x = round(Character.x))&&(y = round(Character.y)))){//If the tile is empty or if occupied by current character
                //Down Range // if(Can shoot this direction)
                FindPrismFlowerDownRange(self.id,Character,'Enemies');
                if(Cursor.NumberOfTargets > 0){
                    //loop through targets and figure out which is the best target
                    var Index, Threat;
                    Index = 0;
                    Threat = 0;
                    while(Index < Cursor.NumberOfTargets){
                        Threat += CalculateThreat(Character,instance_position(Cursor.AttackList[Index].x,Cursor.AttackList[Index].y,objCell));
                        Index += 1;
                    }
                    if(Threat > MaxThreat){
                        MaxThreat = Threat;
                        Tile = self.id;
                        Character.FireDirection = 'Down';
                    }
                }
                }
            }
        }
    }
    if(Tile != noone){//We can attack this turn if there is a target
        Character.CurrentTarget = Tile;
        Character.Action = 'Attack';
        //show_message("found tile");
        AI_MoveToPoint(Character, Tile);
        return true;//AI Successful
    }
    else{
        return false;//AI failed (no targets in range)
    }

return true;//AI was already done
