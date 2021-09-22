//Adds more lines to the current dialogue message.

var NewMessage, Continue;
NewMessage = argument0;
Arrow = argument1;

DialogueControler.message = NewMessage;
DialogueControler.message_length = string_length(DialogueControler.message);
DialogueControler.DisplayArrow = Arrow;
DialogueControler.characters = 0;
DialogueControler.message_draw = "";
DialogueControler.LineNumber = 1;
DialogueControler.AllowInteraction = true;

if(!Arrow){
    DialogueControler.ArrowState = 1;
}
//DialogueControler.InitialBeep = true;
DialogueControler.alarm[0] = 1;