//This causes the character to regain MP
//
/*

var CurrentCharacter, Message, Append;
CurrentCharacter = Cursor.TurnOrder[Cursor.CurrentTurn];
//Append = argument0;

Message = '';


var Ammount;
Ammount = CurrentCharacter.MaxMagic - CurrentCharacter.Magic;
if((Get_Equipped_Item_Battle(CurrentCharacter) = 1000)&&(Ammount != 0)){//can change to test other items and 'add' them together
    if(Ammount >= 2){//only regen 2mp
        Ammount = 2;
    }
    //CreateDialogueBasic(0,0,WordWrap(string(CurrentCharacter.Name) + ' regained ' + string(Ammount) + " MP.",200,'#',false), self.id, true);
    //if(Append){
        //Message = '#';
    //}
    Message += (string(CurrentCharacter.Name) + ' regained ' + string(Ammount) + " MP.#");
    CurrentCharacter.Magic += Ammount;
    //Append = true;//
}
        
return WordWrap(Message,200,'#',false);
*/
