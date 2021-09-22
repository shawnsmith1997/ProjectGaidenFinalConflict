
//Cutscene 12 (Monologue2)
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
        CreateDialogueBasic(19,0,string(WordWrap("Mephisto, this is the place where your parents sleep. Take a good look at it, and remember it well...",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(0,0,string(WordWrap("Ogyaaa Ogyaaa!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("There, there now, Mephisto. Don't cry. Well, Mephisto... we must go quietly to the place where our comrades wait.",200,'#',false)),self.id,true);
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

                if(ID = 2094){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",20,1);                   
                }   
        }  
    break;     

    case 8:
        State += 1;
        room_goto(Epilogue3);
        instance_destroy();
    break;
}