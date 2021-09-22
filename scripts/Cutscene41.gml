
//Cutscene 12 (Post Battle 20)
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
        CreateDialogueBasic(28,0,string(WordWrap("Master Max!",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(0,0,string(WordWrap("Adam tried to remove Max's mask...#...but the mask did not come off.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("That's the Mask of Darkness. You can't remove it, unless you're a Devil.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 19){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",9,1);                         
                }   
        }  
    view_object[0] = Character;
    break;     

    case 8:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("Who are you?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
     case 1001:
    State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Left",1,1);                         
                }   
        }  

    break;    

    case 10:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("I am Oddeye, but I don't know if that's a good thing for you. Now I'll remove the mask that covers his face, myself. This mask is protected by the Powers of Darkness, but it's possible for a Devil to remove it.",200,'#',false)),self.id,true);
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

                if(ID = 19){
                    Character = self.id;
                    direction = 0;                       
                }   
        }  
        Cutscene41();

    break;    

    case 12:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("I'll give it a try...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("Uuugh....",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("Waaaaaa!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("The Mask of Darkness that covered Max's face, shattered into tiny pieces. ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
     case 1003:
    State = 20;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 19){
                    Character = self.id;
                    direction = 270;                        
                }   
        }  
    Cutscene41();
    break;    

    case 20:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("It seems as if I've been able to help him. So, I shall leave. ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 22;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 19){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1);                         
                }   
        }  
    
    break;    

    case 22:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Please wait a minute! You said the Mask of Darkness could only be removed by a Devil... ... that means you're a Devil. So, why did you help Master Max?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("I am indeed a Devil... My master is Zeon, the King of Devils. Long ago, my master Zeon was ensnared and sealed beneath the earth. Darksol is your enemy, and he's my enemy too.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap( "Only you - no-one else - can defeat him. Feh, I talk too much...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State = 1005;
        PanOutDialogueBasic();
    break;
    
    case 1005:
    State = 31;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 19){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1);                         
                }   
        }  

    break;    

    case 31:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Perhaps it was you who helped the Elder to escape from Eiku's fortress...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 32:
        State = 1006;
        PanOutDialogueBasic();
    break;
    
     case 1006:
    State = 33;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 19){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",3,1);                         
                }   
        }  
    Cutscene41();
    break;  
    
    case 33:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Master Max!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 34:
        State = 1007;
        PanOutDialogueBasic();
    break;
    
    case 1007:
    State = 35;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Right",1,1);                    
                }   
        }  
    break;                                   

    case 35:
        State += 1;
        room_goto(RoomMaxRevealCutscene);
        instance_destroy();
    break;
}
