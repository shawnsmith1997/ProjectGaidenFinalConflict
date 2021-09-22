var PreviousCharacter, CurrentCharacter;

//create the first character in the chain
if(global.TrainNumber >= 1){
    PreviousCharacter = instance_create(PlayerTownObject.x,PlayerTownObject.y,FollowerCharacterObject);
    PreviousCharacter.ID = global.TrainMembers[1];
    PreviousCharacter.Position = 1;
    PreviousCharacter._Parent = PlayerTownObject;
    PreviousCharacter.direction = PlayerTownObject.direction;
    PreviousCharacter.depth = -50 + PreviousCharacter.Position; //set depth to their position in the chain. -50 is the layer the player is on. 
}
//loop through and create the rest.
for(i = 2; i <= global.TrainNumber; i+= 1){
    CurrentCharacter = instance_create(PlayerTownObject.x,PlayerTownObject.y,FollowerCharacterObject);
    CurrentCharacter.ID = global.TrainMembers[i];
    CurrentCharacter.Position = i;
    CurrentCharacter._Parent = PreviousCharacter;
    CurrentCharacter.direction = PlayerTownObject.direction;
    CurrentCharacter.depth = -50 + CurrentCharacter.Position; //set depth to their position in the chain. -50 is the layer the player is on. 
    PreviousCharacter = CurrentCharacter;
}