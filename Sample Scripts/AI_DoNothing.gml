//Do nothing makes the character...do nothing...
//So basically it just ends their turn

var Character;//Guy doing the pathfinding
Character = argument0;

with(Character){
    End_Turn(self.id);//ends turn where they currently stand
}