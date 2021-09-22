
//Cutscene 12 (Pre Battle 15)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj3;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(28,0,string(WordWrap("Ian, this is an eerie fortress, don't you agree?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1);                         
                }   
        }

    break;      

    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Those stone statues almost seem to be staring at us!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State = 1013;
        PanOutDialogueBasic();
    break;
    
    case 1013:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1000){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",20,1);                         
                }   
        }
        view_object[0] = Character;
    break;      

    case 6:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(23,0,string(WordWrap("The statues mark your tombstones, heh. You've done well to get this far, but now I'll stop you. You won't get your way, no matter what, and this place shall be your graveyard.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        view_object[0] = viewing_obj3;
        CreateDialogueBasic(28,0,string(WordWrap("What are you talking about, Eiku? We're going to get through your fortress and get to Master Max.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 1003;
        view_object[0] = viewing_obj2;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    
    State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",3,1);                         
                }   
        }

    break;     

    case 10:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("Fwahahaha.... You're so stupid! Max is already... Feh, I've said enough. Enjoy yourselves in my terrible fortress!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        room_goto(BattleRoom15);
        instance_destroy();
    break;
}