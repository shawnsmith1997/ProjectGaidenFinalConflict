//Test for death, if yes show message
//
var CurrentCharacter, Message, Append;
CurrentCharacter = Cursor.TurnOrder[Cursor.CurrentTurn];
//Append = argument0;

Message = '';

if(CurrentCharacter.Health <= 0){//if character is dead
    //if(Append){
        //Message = '#';
    //}
    Message += (string(CurrentCharacter.Name) + ' has been defeated.#');
    //Append = true;
}
        
return WordWrap(Message,200,'#',false);