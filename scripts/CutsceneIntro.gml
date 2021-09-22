
//Cutscene 12 (Pre Battle 18)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(18,0,string(WordWrap("Mishaela! It's taken a long time... finally, I've found you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1000){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Up",10,1);                         
                }   
        }  
    view_object[0] = Character;
    break;     

    case 4:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("What are you saying, Max? If that's the case, it's time to finish me, don't you think? You can't hurt me!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Mistress Mishaela... I am here - you can always rely on Lynx.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",1,1);                         
                }   
        }  

    break;     

    case 8:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("We'll show them what we can do!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 1003;
        PanOutDialogueBasic();
    break;

    case 1003:
State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",0,1);                         
                }   
        }  

    break; 

    case 10:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("So, Max, it seems that you're here to stop us from fulfilling our dream. As you were saying, Lynx...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State = 1004;
        PanOutDialogueBasic();
    break;

    case 1004:
State = 12;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }  

    break; 

    case 12:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Well, Shining Force! It starts... c'mon!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State = 1005;
        PanOutDialogueBasic();
    break;

    case 1005:
    State = 90;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 210){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",10,1);                         
                }
                if(ID = 219){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",10,1);                         
                }   
                if(ID = 220){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",10,1);                         
                }    
        }  
        //CutsceneIntro();
    break; 

    case 90:
        State += 1;
        room_goto(CutsceneIntroRoom_2);
        instance_destroy();
    break;
}