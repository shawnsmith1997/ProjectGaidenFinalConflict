global.doneCutscene = false;
//Cutscene 12 (Post Battle 18)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        view_object[0] = viewing_obj;
        CutsceneCamera.CameraPathfinding = true;
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(0,0,string(WordWrap("You've demonstrated great skill in your fighting style. If that's the case, surely you can defeat the Devil Army! Though I do not know if it will be of use to you, I can offer you a sword. Someone, bring it to me!",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(0,0,string(WordWrap("Your Highness! Is this the one?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 232){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",7,1);                         
                }   
        }  

    break;     

    case 6:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("It is indeed! We confiscated this sword from a man in the Devil Army. When doing so, the Devil Army sent for me...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    

    case 7:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 230){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }  

    break;     

    case 8:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Aah! This is, unmistakeably, Master Max's sword! Your Highness, Master Max has been through here, has he?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("That man? He certainly has!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 12;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 180;                          
                }   
        }  
    Cutscene37();
    break;     

    case 12:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Excellent! Master Max has been here! Ian, this sword possessed the Powers of Light. It's a very important sword. So, please accept it from His Highness.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 14;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1){
                    Character = self.id;
                    direction = 0;                          
                }   
        }  
    Cutscene37();
    break;    

    case 14:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Ian received the Chaos Breaker!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Well then, everyone! Before you face the final battles, it would be best for you to rest in the town awhile.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;                      

    case 18:
        State += 1;
        //room_goto(Town1);
        //instance_destroy();
        instance_create(0,0,MemberListControler);
        MemberListControler.PanDirection = 'in';
        MemberListControler.CurrentObject = self.id;
        MemberListControler.SubDisplay = 'Cutscene';
        MemberListControler.Event = 'Cutscene';
        sound_play(MenuPanSound);
    break;
}
