
//Cutscene 12 (Post Battle 14)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj2;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(23,0,string(WordWrap("Mwahahaha! Shining Force...",200,'#',false)),self.id,true);
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

                if(ID = 219){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }

    break;      

    case 4:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("You've done well, according to the rumours.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }

    break;      

    case 6:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("But you won't be able to progress beyond the fortress of the great Eiku!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",2,1);                         
                }   
        }

    break;      

    case 8:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("I shall take revenge for Magus, and you'll feel the pains of hell!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        view_object[0] = viewing_obj3;
        CreateDialogueBasic(28,0,string(WordWrap("Ian... what kind of trap has Eiku set for us? We don't know what it is, but we must advance.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State = 1010;
        PanOutDialogueBasic();
    break;
    
    case 1010:
    State = 12;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1);                         
                }   
        }

    break;      

    case 12:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("We must go forward to find Master Max.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;                      

    case 13:
        State += 1;
        room_goto(Town1);
        instance_destroy();
    break;
}