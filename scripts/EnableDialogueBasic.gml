//This is the basic function call to allow
//interaction with the dialogue controler.
var Arrow;
Arrow = argument0;//Display the arrow?

DialogueControler.AllowInteraction = true;
DialogueControler.DisplayArrow = Arrow;
if(!Arrow){
    DialogueControler.ArrowState = 1;
}