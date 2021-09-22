
//Cutscene 12 (Post Battle 20)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 35;
        break;

    case 35:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Master Max... Ian has guided us so far.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 36:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 37:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("So, it was you... I'm ashamed to say they put that mask on me when I was defeated in a fight with Lynx. Damn it! It can't be that I was put under the same curse as my brother, Kane! At least now, we've put an end to it.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 38:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 39:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("How could this happen to both Max and Kane...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 40:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 41:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("...nevertheless, you've skillfully made it this far. I was afraid, but thanks to you it seems like we'll be able to go home. With that much power, Ian, perhaps we really can stop the Devil's revival. Ian, may I too join the new Shining Force?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 42:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 43:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Max joins the Shining Force.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 44:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 45:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("That should reassure the group, Ian. Well, we should make haste and move on...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 46:
        State += 1;
        PanOutDialogueBasic();
    break;                         

    case 47:
        State += 1;
        room_goto(Town1);
        instance_destroy();
    break;
}