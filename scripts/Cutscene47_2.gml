
//Cutscene 12 (Post Battle 22)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 14;
        break;

    case 14:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("At last, Darksol's...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("Ian, we defeated him!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Master Max, I... I...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("Adam wants to cry!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("Hohoho! Finally, the devil has been defeated!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("First of all, I must express my gratitude to you. But the next time we meet, we are destined to fight, because I am a Devil...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(3,0,string(WordWrap("Oddeye...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(5,0,string(WordWrap( "We must never forget what happened here, not ever.... ever...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State = 31;
        PanOutDialogueBasic();
    break;

    case 31:
        State += 1;
        CreateDialogueBasic(9,0,string(WordWrap("Ah, the sun is rising!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 32:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 33:
        State += 1;
        CreateDialogueBasic(4,0,string(WordWrap("So it is...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 34:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 35:
        State += 1;
        room_goto(Chapter4End);
        instance_destroy();
    break;
}