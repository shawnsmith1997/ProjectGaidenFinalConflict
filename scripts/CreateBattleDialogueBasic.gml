//Basic dialogue controler creation script
//It creates a dialogue controler and performs the following actions in order.
//1. Pan in Portrait
//2. Pan in Dialogue Window
//3. Start Printing the given message.

//Arguments
var Message, Object;

Message = argument0; //What message are we printing out?
Object = argument1; //What object summoned the dialogue controler

instance_create(0,0,BattleCutsceneDialogueControler);//Create the Dialogue Controler
BattleCutsceneDialogueControler.message = Message;
BattleCutsceneDialogueControler.message_length = string_length(Message);
BattleCutsceneDialogueControler.CurrentObject = Object;//Self is a reference to whatever object called this script. 


BattleCutsceneDialogueControler.PanDirection = 'in';
BattleCutsceneDialogueControler.WindowPanDirection = 'in';
BattleCutsceneDialogueControler.SkipEvent = true; //Jumps right into printing out dialogue after panning in.