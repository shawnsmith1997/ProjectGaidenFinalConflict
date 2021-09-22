//Cutscene 11 (Post Battle 5)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 18;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        break;
    
    case 18:
        State = 19;
        CreateDialogueBasic(0,0,string(WordWrap("Chiiieeeefff!!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 1000:
    State = 20;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 1000){
                Character = self.id;
                direction = 90;                
            }                  
        }
    MoveCharacter(Character,"Left",20,1.5);
    view_object[0] = Character;
    break;
    
    case 19:
        State = 1000;
        PanOutDialogueBasic();
    break;

    case 20:
        State = 1999;
        CreateDialogueBasic(8,0,string(WordWrap("Nosshu...#...#Come on, " + global.Name[1] + "... we should leave now.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 1999:
        State = 2000;
        PanOutDialogueBasic();
    break;    
    
    case 2000:
    State += 1;
        var Character;
        with(GenericCutsceneNPC){
        
            if (ID = 1000){
            Character = self.id;
            direction = 270;
            MoveCharacter(Character,"Down",5,1);                
            }
            if(ID = 1){
                Character = self.id;
                direction = 270;
                instance_destroy();                
            }
            if(ID = 8){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",2,1);             
            } 
            if(ID = 207){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",1,1);             
            }                                            
        }

    break;
    
    case 2001:
    State += 1;
        var Character;
        with(GenericCutsceneNPC){

            if(ID = 8){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",2,1);             
            } 
            if(ID = 207){
                Character = self.id;
                direction = 270;
                instance_destroy();           
            }                                            
        }

    break;
    
    case 2002:
    State = 21;
        var Character;
        with(GenericCutsceneNPC){

            if(ID = 8){
                Character = self.id;
                direction = 270;
                instance_destroy();           
            }                                           
        }
        CreateScreenFade(c_black,255,100,0,'none',self.id);
        alarm[0] = 100;
    break;         
    
    case 21:
        alarm[0] = 100;
        State += 1;
        room_goto(Town1);
        instance_destroy();
    break;
}