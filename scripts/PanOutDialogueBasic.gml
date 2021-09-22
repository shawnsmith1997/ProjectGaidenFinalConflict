//Basic dialogue controler destroy script
//It performs the following actions in order.
//1. Pan out Portrait and dialogue window
//2. Destroy the controler. 

if(DialogueControler.PortraitID != 0){//if we pan out a portrait, the "swoosh" sound plays
    sound_play(MenuPanSound);
}
DialogueControler.AllowInteraction = false;
DialogueControler.PanDirection = 'out';
DialogueControler.WindowPanDirection = 'out';
DialogueControler.PortraitPanDirection = 'out';
DialogueControler.SkipEvent = true; //Jumps right into deleting the controler.