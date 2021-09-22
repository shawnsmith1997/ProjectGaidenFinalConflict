//Basic dialogue controler creation script
//It creates a dialogue controler and performs the following actions in order.
//1. Pan in Portrait
//2. Pan in Dialogue Window
//3. Start Printing the given message.

//Arguments
var PortraitID, PortraitOffsetX, Message, Object, Arrow;

PortraitID = argument0;//What portrait do we display? (0 for no portrait)
PortraitOffsetX = argument1; // Where on the screen do we display the portrait at? (0 for the default screen location)
Message = argument2; //What message are we printing out?
Object = argument3; //What object summoned the dialogue controler
Arrow = argument4;

instance_create(0,0,DialogueControler);//Create the Dialogue Controler

DialogueControler.PortraitID = PortraitID;
DialogueControler.PortraitOffsetX = PortraitOffsetX;
DialogueControler.message = Message;
DialogueControler.message_length = string_length(Message);
DialogueControler.CurrentObject = Object;//Self is a reference to whatever object called this script. 
DialogueControler.DisplayArrow = Arrow;
DialogueControler.AllowInteraction = true;
if(!Arrow){
DialogueControler.ArrowState = 1;
}

if(PortraitID = 0){//if we arent displaying a portrait, skip the pan and start panning up the dialogue window.
    DialogueControler.PanDirection = 'in';
    DialogueControler.WindowPanDirection = 'in';
    DialogueControler.SkipEvent = true; //Jumps right into printing out dialogue after panning in.
}
else{//We have a portrait to pan in so we pan that in first, then the dialogue window.
    sound_play(MenuPanSound);
    DialogueControler.PanDirection = 'in';
    DialogueControler.PortraitPanDirection = 'in';
    DialogueControler.SkipEvent = true; //Jumps right into printing out dialogue after panning in.
}