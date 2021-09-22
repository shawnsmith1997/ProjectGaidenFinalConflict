/*
with cells
if reachable
find attack range
loop through cursor list and check for character with the highest priority
set new highest (store tile)

return the tile to pathfind to


eventually test for spell targets
for now just pick best single target

*/


var Character, MaxThreat, Tile, Spell, SpellLevel;
Character = argument0;
Spell = argument1;
SpellLevel = argument2;
MaxThreat = 0;
Tile = noone;

with(objCell){
    if(Reachable){
        //find attack range
        if((instance_position(x,y,objGuy) = noone)||((x =  round(Character.x))&&(y =  round(Character.y)))){//If the tile is empty or if occupied by current character
          
            FindAttackRange(self.id,Get_Spell_Stats(Character.Spells[Spell],SpellLevel,'SpellRange'),Get_Spell_Stats(Character.Spells[Spell],SpellLevel,'SpellLimit'),2);
            if(Cursor.NumberOfTargets > 0){
                //loop through targets and figure out which is the best target
                var Index, Threat;
                Index = 0;
                while(Index < Cursor.NumberOfTargets){
                    Threat = CalculateHealingThreat(Character,Cursor.AttackList[Index]);
                    if(Threat > MaxThreat){
                        MaxThreat = Threat;
                        Tile = self.id;
                    }
                    Index += 1;
                }       
                        if(MaxThreat > 10){
                            //Tile = self.id;
                            //show_message("Line 44 Find Healing Target");
                            Character.Action = 'Heal';
                        }
                        else{
                            Tile = noone;
                            if(Reachable){
                                FindAttackRange(self.id, Get_Battle_Stat_Total(Character,'AttackRange'), Get_Battle_Stat_Total(Character,'AttackLimit'), 1);
                                //show_message("Line 49 Find Healing Target");
                                MaxThreat = 0;
                                var Index2, Threat2;
                                Index2 = 0;
                                while(Index2 < Cursor.NumberOfTargets){
                                    Threat2 = CalculateThreat(Character,Cursor.AttackList[Index2]);
                                    if(Threat2 > MaxThreat){
                                        MaxThreat = Threat2;
                                        //show_message(Cursor.AttackList[Index2]);
                                        Tile = self.id;
                                        Character.Action = 'Attack';
                                    }
                                    Index2 += 1;
                                }
                                //if(MaxThreat < 1){
                                  //  Character.CurrentTarget = noone;
                                //}
                           }
                           //show_message("End of File Find Healing Target");
                        }
            }
        }
    }
}

return Tile;
