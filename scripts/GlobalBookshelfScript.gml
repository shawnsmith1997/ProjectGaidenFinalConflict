//This script finds and calls the correct script
var ID, DialogueState; //What bookshelf did we interact with and where are we at during the script.
ID = argument0;
DialogueState = argument1;

switch(ID){
    case 1:
        BookshelfScript01(DialogueState);
        break;
    case 2:
        BookshelfScript02(DialogueState);
        break;
    default:
        BookshelfScript00(DialogueState);
}