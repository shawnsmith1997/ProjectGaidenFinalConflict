//This causes the character to regain MP
//
var CurrentCharacter, Message, Append;
CurrentCharacter = Cursor.TurnOrder[Cursor.CurrentTurn];
//Append = argument0;

Message = '';


var Ammount;
Ammount = 5;
if (CurrentCharacter != noone){
    if(CurrentCharacter.Poisoned){//are we poisoned?
        //if(Append){
            //Message = '#';
        //}
        Message += (string(CurrentCharacter.Name) + ' suffered ' + string(Ammount) + " points of damage from the poison.#");
        CurrentCharacter.Health -= Ammount;
        CurrentCharacter.Health = LowCap(CurrentCharacter.Health,0);//if negetive, set to 0
        //Append = true;
    }
}      
return WordWrap(Message,200,'#',false);
