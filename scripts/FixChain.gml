//Fixes the chain after a cutscene (Possibly adding more characters to it)

var PreviousCharacter, CurrentCharacter, DepthIndex, i;

//create the first character in the chain
if(global.TrainNumber >= 1){
    with(FollowerCharacterObject){
        if(ID = global.TrainMembers[1]){
            PreviousCharacter = self.id;//remember the previous character
            Position = 1;//place in chain
            _Parent = PlayerTownObject;//person ahead of them in chain
            depth = -50 + Position;//depth
        }
    }
}

for(i = 2; i <= global.TrainNumber; i+= 1){
    with(FollowerCharacterObject){
        if(ID = global.TrainMembers[i]){
            CurrentCharacter = self.id;
            Position = i;
            _Parent = PreviousCharacter;
            depth = -50 + Position;
            xProjected = PreviousCharacter.x;
            yProjected = PreviousCharacter.y;
            PreviousCharacter = CurrentCharacter;
        }
    }
}