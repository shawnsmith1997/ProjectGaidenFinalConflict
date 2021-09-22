

var DialogueState;
DialogueState = argument0;

switch (DialogueState){
    case 0:
        CreateDialogueBasic(0,0,WordWrap("Placeholder NPC Dialogue!",200,'#',false),self.id,true);
        DialogueControler.Voice = Dialogue4Sound;
        PlayerTownObject.DialogueState += 1;
        break;
    case 1:
        PanOutDialogueBasic();
        PlayerTownObject.DialogueState += 1;
        break;
    case 2:
        PlayerTownObject.DialogueState = 0;
        PlayerTownObject.AllowInteraction = true;
        OverwriteWander = false;
        alarm[0] = 60;
        break;
}