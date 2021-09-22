
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 47;
    break;                      
    
    case 47:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Ridion, we must destroy Mishaela and her devils to stop their evil plan... at all costs!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 48:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 49:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("Yes, we will defeat them!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 50:
        State = 1006;
        PanOutDialogueBasic();
    break;  
    
    case 1006:
    State = 1007;
    var Character;
            with(GenericCutsceneNPC){
                if(ID = 18){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1);                            
                }
                if(ID = 16){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1);                            
                } 
            
        }  
    break;   
    
    case 1007:
    State = 90;
    var Character;
            with(GenericCutsceneNPC){
                if(ID = 18){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",15,1);                            
                }
                if(ID = 16){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",15,1);                            
                } 
            
        }  
    break;                                                                                                    
             

    case 90:
        State += 1;
        room_goto(TitleScreen);
        instance_destroy();
    break;
}