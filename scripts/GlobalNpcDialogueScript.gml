//This script finds and calls the correct script
var ID, DialogueState; //What npc did we interact with and where are we at during the script.
ID = argument0;
DialogueState = argument1;

switch(ID){
    case 1:
        NpcDialogue01(DialogueState);
        break;
    case 2:
        NpcDialogue02(DialogueState);
        break;
    default:
        OverwriteWander = false;
        PlayerTownObject.AllowInteraction = true;
}