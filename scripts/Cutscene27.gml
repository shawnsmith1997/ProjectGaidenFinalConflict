
//Cutscene 12 (Post Battle 13)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(0,0,string(WordWrap("Remember this... although you defeated us, you won't defeat Master Eiku in his fortress.... ugh...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State = 1000;
    break;
    
    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 226){
                    Character = self.id;
                    direction = 180;  
                    instance_change(obj_explosion2,true);        
                }   
        }
        Cutscene27();    
    break;      

    case 3:
        State = 1000;
        PanOutDialogueBasic();
    break;

    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Ian, having heard those words, it seems Eiku's fortress may be a considerable thing to deal with today.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break; 

    case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
    State += 1;
    view_object[0] = viewing_obj2;
    CreateDialogueBasic(28,0,string(WordWrap("Before we go on to fight, we should go and drop by the village of Roft.",200,'#',false)),self.id,true);
    DialogueControler.Voice = Dialogue5Sound;
    
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;                       

    case 8:
        State += 1;
        room_goto(Town1);
        instance_destroy();
    break;
}