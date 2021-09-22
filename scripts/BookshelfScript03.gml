

var DialogueState;
DialogueState = argument0;

switch (DialogueState){
    case 0:
        CreateDialogueBasic(0,0,WordWrap(string(global.Name[1]) + " examines the bookshelf.",200,'#',false),self.id,true);
        DialogueControler.Voice = noone;
        PlayerTownObject.DialogueState += 1;
        break;
    case 1:
        AppendDialogueBasic(WordWrap("#Datatype: A set of values and operations on those values.",200,'#',false),true);
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

/* stages of a jeffrey assignment
Ask for mercy
Cry
Panic
Acceptance
push it back
staying up till 3am to have it pushed back the next day