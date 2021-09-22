
//Cutscene 12 (Pre Battle 13)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(14,0,string(WordWrap("The stronghold of Galam lies ahead of us. It was originally built to defend against monster attacks. We'll need to go through it.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("You say that's what it was for originally, but what has become of it now?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("It's now occupied by the Devil Army. Some say that only Eiku remains there, I think you'll see that's not the case though... ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("The people of Roft village might be able to help us.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Roft village?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("Yes, the village is right ahead of us. We'll go there first, before we go to the fortress of Galam.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("They'll show up... then we, the Devil Army, shall crush their insolence!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        view_object[0] = viewing_obj2
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Hunt them down! We are Master Eiku's elite force! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("It's you! We'll force you down and kill you all!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;     

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        view_object[0] = viewing_obj3
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("Look over there! It's the Devil Army!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("We'll have to get them out of our way.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;                

    case 26:
        State += 1;
        room_goto(BattleRoom13);
        instance_destroy();
    break;
}