//Cutscene 13 (Pre Battle 7)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 100;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
   break;
   
   case 100:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[1] + " and the Force were now intent on heading north to Pacalon. To get there, they must pass through a cave...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;   
   break;
   
    case 101:
        State = 1;
        PanOutDialogueBasic();
        with(ScreenFadeControler){
            instance_destroy();
        }
    break;   
     
   case 1:
        State += 1;
        CreateDialogueBasic(4,0,string(WordWrap("This cave is really long, isn't it?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 4;
        PanOutDialogueBasic();
        break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(9,0,string(WordWrap("It's just too narrow. I'm having trouble flying in here!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(5,0,string(WordWrap("The way out can't be too far now... Hey! I just felt a breeze on my skin...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 8:
        State += 1;
        CreateDialogueBasic(3,0,string(WordWrap("Hold on Hawel.... why do you always act like you're some great know-it-all?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 10:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Well, we've got to do something. This cave may well come out somewhere in the region of Pacalon. When we get out, we really should take some time to have a well-deserved rest.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;  

    case 12:
        State += 1;
        CreateDialogueBasic(7,0,string(WordWrap("What's that?! I think I just saw someone over there... a shadow moved. This could mean danger...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("Eh? We don't need that sort of thinking. It's nothing.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;        

    case 16:
        State += 1;
        CreateDialogueBasic(7,0,string(WordWrap("No, I'm sure it was somebody. Oh, who can it be?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;     

    case 18:
        State += 1;
        CreateDialogueBasic(3,0,string(WordWrap("What great guard is this? Mishaela's squad is ahead of us... what shall we do?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        view_object[0] = viewing_obj2;
        sound_loop(AttackBGM);
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Hey, did I hear somebody's voice just now?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 22:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Oooh, it was! As Magus' search company, we must defend the cave's exit! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Okay now... I, your master, command you to attack!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 30;
        PanOutDialogueBasic();
    break;

    case 30:
        view_object[0] = viewing_obj;
        State += 1;
        CreateDialogueBasic(7,0,string(WordWrap("The cave is shaking!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        CreateDialogueBasic(3,0,string(WordWrap("Eek! The pillars!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 34:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("It's the enemy! Attack them, everyone - but be careful!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 35:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 36:
        State += 1;
        room_goto(BattleRoom07);
    break;

}