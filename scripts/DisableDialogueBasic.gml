//This is the basic function call to prevent
//further interaction with the dialogue controler.
var Arrow;
Arrow = argument0;//Display the arrow?

DialogueControler.AllowInteraction = false;
DialogueControler.DisplayArrow = Arrow;
if(!Arrow){
DialogueControler.ArrowState = 1;
}