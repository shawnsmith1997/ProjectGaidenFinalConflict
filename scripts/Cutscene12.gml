//Cutscene 12 (Pre Battle 6)
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
        CreateDialogueBasic(8,0,string(WordWrap("Hey, Mishaela's over there!!",200,'#',false)),self.id,true);
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
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(30,0,string(WordWrap("Those guys are bothersome, aren't they?#Focus your minds#and they won't be able to hurt you.#Then, we'll take care of them...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(9,0,string(WordWrap("We don't like the sound of that...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
        State +=1;
        var Character;
        with(GenericCutsceneNPC){

            if(ID = 217){
                Character = self.id;
                direction = 90;  
                MoveCharacter(Character,"Left",1,2.4);              
            }
                   
        }
    break;
    
    case 1001:
    State += 1;
        var Character;
        with(GenericCutsceneNPC){

            if(ID = 218){
                Character = self.id;
                direction = 90;  
                MoveCharacter(Character,"Right",1,2.4);              
            }
                   
        }
    break;
    
    case 1002:
    State += 1;
                var Character;
        with(GenericCutsceneNPC){
            if(ID = 219){
                Character = self.id;
                direction = 270;  
                MoveCharacter(Character,"Down",15,2.4);              
            }
            if(ID = 9){
                Character = self.id;
                direction = 270;  
                MoveCharacter(Character,"Down",15,2.4);              
            }                     
        }

    break;

    case 1003:
    State += 1;

    room_goto(BattleRoom06Cutscene_2);
    break;    
        
}