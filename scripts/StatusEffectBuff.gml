//This causes the character to regain MP
//
var CurrentCharacter, Message, Append;
CurrentCharacter = Cursor.TurnOrder[Cursor.CurrentTurn];
//Append = argument0;

Message = '';


    with(CurrentCharacter){
        if(GuyType = 'player'){
            if (CurrentCharacter.AttackBuff != 0){
                CurrentCharacter.AttackBuff -=1;
                if (CurrentCharacter.AttackBuff = 0){
                    Message += ("The Effects of the Spell wore off!");
                }
            }
            if (CurrentCharacter.QuickBuff != 0){
                CurrentCharacter.QuickBuff -=1;
                if (CurrentCharacter.QuickBuff = 0){
                    Message += ("The Effects of the Spell wore off!");
                }
            }
            if (CurrentCharacter.DefenceBuff != 0){
                CurrentCharacter.DefenceBuff -=1;
                if (CurrentCharacter.DefenceBuff = 0){
                    Message += ("The Effects of the Spell wore off!");
                }
            }     
        }
    }
        
return WordWrap(Message,200,'#',false);
