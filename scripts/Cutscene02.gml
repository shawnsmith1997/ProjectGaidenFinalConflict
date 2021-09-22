//Cutscene 2(Ruburan and The Caravan)


switch (State){
    case 0:
        State = 900;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        instance_create(0,0,CutsceneCamera);
        instance_create(312,128,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject;
        alarm[0] = 60;
        break;
    
    case 900:
        State = 1;
        break;
    
    case 1:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("So Adam and his companions#headed for the ancient temple#to search for Max's trail, however...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 299;
        ScreenFade(-2,.1,'in',self.id);
        break;
        
        
        case 299:
        State = 3;
        sound_stop(chapterend);
        sound_loop(Battle3BGM);
        PanOutDialogueBasic();
        break;
        
    case 3:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("This...#Is this it?#It is!#This is the Caravan...#It probably won't be very convenient to take...#I... I don't understand...#How do you get this thing to move?#First we need to work out how to get inside...#Well, that didn't work.#This thing must be broken.#What?... who's that over there?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
        
    case 4:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 5:
        State += 1;
        CameraTargetObject.x = 312;
        CameraTargetObject.y = 648;
        CreateDialogueBasic(4,0,string(WordWrap("He's going to break that ancient relic!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 6:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 7:
        State += 1;
        CameraTargetObject.x = 312;
        CameraTargetObject.y = 128;
        CreateDialogueBasic(8,0,string(WordWrap("Someone just had to come to spoil this...#We'll abandon the caravan for now - let's escape.#Hey, you!#A thief like me is skilled enough to escape. Men, why don't you keep them company?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 8:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    

    case 9:
        CameraTargetObject.x = 312;
        CameraTargetObject.y = 648;
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("The enemy is coming!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 10:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 11:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("Adam, you can't fight... but we can!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 12:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 13:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Understood. Well then Mead, please lead them!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 14:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 15:
        State += 1;
        room_goto(BattleRoom01);
        instance_destroy();
    break;
}