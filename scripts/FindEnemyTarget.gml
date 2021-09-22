/*
with cells
if reachable
find attack range
loop through cursor list and check for character with the highest priority
set new highest (store tile)


return the tile to pathfind to

*/

var Character, MaxThreat, Tile;
Character = argument0;
MaxThreat = 0;
Tile = noone;



with(objCell){
    if(Reachable){
        //find attack range
        if((instance_position(x,y,objGuy) = noone)||((x = round(Character.x))&&(y = round(Character.y)))){//If the tile is empty or if occupied by current character
            FindAttackRange(self.id, Get_Battle_Stat_Total(Character,'AttackRange'), Get_Battle_Stat_Total(Character,'AttackLimit'), 1);
            if(Cursor.NumberOfTargets > 0){
                //loop through targets and figure out which is the best target
                var Index, Threat;
                Index = 0;
                while(Index < Cursor.NumberOfTargets){
                    Threat = CalculateThreat(Character,Cursor.AttackList[Index]);
                    if(Threat > MaxThreat){
                        MaxThreat = Threat;
                        Tile = self.id;
                        Character.Action = 'Attack';
                    }
                    Index += 1;
                }
            }
        }
    }
}

return Tile;