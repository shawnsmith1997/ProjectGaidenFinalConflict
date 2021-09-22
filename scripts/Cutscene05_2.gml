//Cutscene 5 (Post Battle 2)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 40 ;
        instance_create(0,0,CutsceneCamera);
        instance_create(648,312,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject; 
        break;
   
    case 40:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("This Max everybody keeps talking about... It reminds me - before that woman came here, a guy named Max came here too!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 41:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 42:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Ruburan, is that true?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 43:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 44:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Even if I was lying you'd have no way to know. But, I'm not lying.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 45:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 46:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap(global.Name[1] +", we've seen your strength now. " + global.Name[1] + ", please come with us to find Max.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 47:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 48:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap(global.Name[1] + " please... Go with Adam to find Max. I'll go too, to help the Elder.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 49:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 50:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[1] + " joins the Shining Force.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        sound_play(JoinBGM2);
    break;

    case 51:
        sound_loop(SF1Sadness);
        State += 1;
        PanOutDialogueBasic();
    break;

    case 52:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap(global.Name[1] + ", you will be our leader. However... Cynthia should remain here. It's for the best.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 53:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 54:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("W...why? I... If I come along, you won't have to look after me.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 55:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 56:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("I won't hear it. Cynthia, what if we can't get the Elder back... what if there's a tragedy? It will only make you sad.#Well, " + global.Name[1] + ". Let's go now!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 57:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 58:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("W...why? I... If I come along, you won't have to look after me.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 59:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 60:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("But, that woman is dangerous. We were lucky to escape that last fight...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 61:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 62:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Surely you're not afraid of the dangers, Ruburan? Either way, you have to go. We'll face the dangers together. We can't just stand by and watch while they kill the Elder. Please lead the way, Ruburan.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 63:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 64:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("... Alright then, everybody follow me!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 65:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 66:
        State += 1;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        alarm[0] = 50;
        room_goto(Town1);
        sound_stop(BadEventBGM);
        sound_stop(JoinBGM2);
        instance_destroy();
    break;
}
