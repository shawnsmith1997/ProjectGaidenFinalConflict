//Adds more lines to the current dialogue message.

var NewMessage, Continue;
NewMessage = argument0;
Arrow = argument1;
BattleCutsceneDialogueControler.message = NewMessage;
BattleCutsceneDialogueControler.message_length = string_length(BattleCutsceneDialogueControler.message);
BattleCutsceneDialogueControler.DisplayArrow = Arrow;
BattleCutsceneDialogueControler.characters = 0;
BattleCutsceneDialogueControler.message_draw = "";
BattleCutsceneDialogueControler.LineNumber = 1;

if(!Arrow){
    BattleCutsceneDialogueControler.ArrowState = 1;
}
//DialogueControler.InitialBeep = true;
BattleCutsceneDialogueControler.alarm[0] = 1;