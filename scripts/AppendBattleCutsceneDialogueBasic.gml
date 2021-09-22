//Adds more lines to the current dialogue message.

var NewMessage, Continue;
NewMessage = argument0;

//show_message(BattleCutsceneDialogueControler.message);
//show_message(NewMessage);
//show_message(BattleCutsceneDialogueControler.message + string(NewMessage));
BattleCutsceneDialogueControler.message += string(NewMessage);
BattleCutsceneDialogueControler.message_length = string_length(BattleCutsceneDialogueControler.message);
BattleCutsceneDialogueControler.alarm[0] = 1;