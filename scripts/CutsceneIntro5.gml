
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 7;
    break;    

    case 7:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Will they hurt Mistress Mishaela? I can reach her quickly enough.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 8:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 9:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Max fights well, however... I should be cautious and return to Mishaela.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 10:
        State = 1006;
        PanOutDialogueBasic();
    break;
    
    case 1006:
    State = 1007;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",2,1);                            
                }
 
   
        }  
    break; 
    
    case 1007:
    State = 1008;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",2,1);                            
                }
 
   
        } 
        view_object[0] = Character; 
    break;        
 
    case 1008:
    State = 90;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",0,1);                            
                }
 
   
        }  
        view_object[0] = Character;
    break;     
                                                                                                           
    case 90:
        State += 1;
        room_goto(CutsceneIntroRoom_6);
        instance_destroy();
    break;
}