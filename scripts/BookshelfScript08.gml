

var DialogueState;
DialogueState = argument0;

switch (DialogueState){
    case 0:
        CreateDialogueBasic(0,0,WordWrap(string(global.Name[1]) + " examines the bookshelf.",200,'#',false),self.id,true);
        PlayerTownObject.DialogueState += 1;
        break;
    case 1:
        AppendDialogueBasic(WordWrap('#The book is titled: "The Life of Gary."',200,'#',false),true);
        PlayerTownObject.DialogueState += 1;
        break;
    case 2:
        PanOutDialogueBasic();
        PlayerTownObject.DialogueState += 1;
        break;
    case 3:
        PlayerTownObject.DialogueState = 0;
        PlayerTownObject.AllowInteraction = true;
        break;
}