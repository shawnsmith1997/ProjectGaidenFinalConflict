//If a character dies, remove every one of its turns from the turn order
//so that the cursor will not try to find a non existent object
var Character, index;
Character = argument0

index = 0;

while (index < Cursor.NumberOfGuys){
    if(Cursor.TurnOrder[index] = Character){
        Cursor.TurnOrder[index] = noone;
    }
    index +=1;
}