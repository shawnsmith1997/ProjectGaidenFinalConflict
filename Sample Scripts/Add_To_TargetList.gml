//Adds the tile to the list
//For Enemy Wander AI script
var Character;
Character = argument0;

Character.TargetArray[Character.NumberOfTargets] = self.id;
Character.NumberOfTargets += 1;