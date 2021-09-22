
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 21;
    break;       
    
    
    case 21:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Now Lynx, Eiku, Magus - Let's Go!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 22:
        State = 1006;
        PanOutDialogueBasic();
    break; 
    
    case 1006:
    State = 90;
    var Character;
            with(GenericCutsceneNPC){
                if(ID = 210){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1);                            
                }
                if(ID = 211){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1);                            
                } 
            
                if(ID = 219){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1);                            
                }
                if(ID = 220){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1);                            
                }
            view_object[0] = viewing_obj2;
        }  
    break;                                                                                                              

    case 90:
        State += 1;
        room_goto(CutsceneIntroRoom_10);
        instance_destroy();
    break;
}