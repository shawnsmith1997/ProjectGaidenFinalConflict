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
          
            FindAttackRange(self.id,Get_Spell_Stats(Character.Spells[Spell],SpellLevel,'SpellRange'),Get_Spell_Stats(Character.Spells[Spell],SpellLevel,'SpellLimit'),1);
            if(Cursor.NumberOfTargets > 0){
                //loop through targets and figure out which is the best target
                var Index, Threat;
                Index = 0;
                while(Index < Cursor.NumberOfTargets){
                    Threat = CalculateThreat(Character,Cursor.AttackList[Index]);
                    if(Threat > MaxThreat){
                        MaxThreat = Threat;
                        Tile = self.id;
                        Character.Action = 'Magic';

                    }
                    Index += 1;
                }
            }
        }
    }
}

return Tile;