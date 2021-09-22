
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 1006;
    break; 
    
    case 1006:
    State = 1007;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
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

                if(ID = 16){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",2,1);                                
                }
 
   
        }  
    break;
    
    case 1008:
    State = 1009;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",3,1);                                
                }
 
   
        }  
    break;
    
    case 1009:
    State = 1010;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",2,1);                                
                }
 
   
        }  
        view_object[0] = Character;
    break;   
    
    case 1010:
    State = 1011;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",3,1);                                
                }
 
   
        }  
        view_object[0] = Character;
    break;                       

    case 1011:
    State = 1012;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",8,1);                                
                }
 
   
        }  
        view_object[0] = Character;
    break;
    
    case 1012:
    State = 90;
    var Character;
            with(GenericCutsceneNPC){
                if(ID = 16){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",3,1);                                
                }
 
   
        }  
        view_object[0] = viewing_obj2;
        alarm[0] = 60;
    break;          
    
    case 90:
        State += 1;
        room_goto(CutsceneIntroRoom_4);
        instance_destroy();
    break;
}