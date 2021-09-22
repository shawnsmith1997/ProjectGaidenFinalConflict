
//Cutscene 12 (Post Battle 16)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State = 26;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        sound_play(CriticalSound);
        break;

    case 26:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("Elder! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap( "A....Adam... is he safe? Cynthia... Ugh.... ughhhhhhh....",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State = 31;
        PanOutDialogueBasic();
    break;

    case 31:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("Y...yes. Elder... Elder, hold on!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 32:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 33:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Elder!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 34:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 35:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Ohohoho... in a little while our plans will be complete. Isn't that wonderful?! I'm going to enjoy defeating you the most! Ohohoho!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 36:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 37:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Elder!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 38:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 39:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("I... I'm already dying. Adam, somehow you have to save this world... ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 40:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 41:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Elder! You must try to hold on!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 42:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 43:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("E...Eiku said that the Devil Army's stronghold is in Ground Seal, I'm certain of it. A...and then, Adam might be able to talk about... Ian and Ma... Ugh...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 44:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 45:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("...Elder... How could such an true and innocent man be dragged into something like this? Mishaela... I'll absolutely never forgive her for this!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 46:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 47:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Elder! You must try to hold on!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 48:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 49:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("The Elder died before their very eyes. The unity of the Shining Force deepens as they hinder the plans of Mishaela and her Devil Army.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 50:
        State += 1;
        PanOutDialogueBasic();
    break;                          

    case 51:
        State += 1;
        room_goto(Chapter3End);
        instance_destroy();
    break;
}