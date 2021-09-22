//Cutscene 5 (Pre Battle 3)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 40 ;
        instance_create(0,0,CutsceneCamera);
        instance_create(648,312,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        break;
   
    case 40:
    State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 1){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,'Right',5,2);
            }
            if(ID = 207){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,'Right',5,2);
            }
            if(ID = 8){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,'Right',5,2);
                view_object[0] = Character; 
            }            
        } 
    break;  
    
        case 41:
    State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 1){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Up',3,2);
            }
            if(ID = 207){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Up',3,2);
            }
            if(ID = 8){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Up',3,2);
            }            
        }
    break;  
    
    case 42:
    State = 1;
    break;  
        
        
        
    case 1:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("This place is dangerous... it's crawling with monsters.#They outnumber us by far... we should make this quick then hurry to my secret hideout.",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(28,0,string(WordWrap(global.Name[1] + ", as Ruburan said, let's make haste.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        room_goto(BattleRoom03);
        instance_destroy();
    break;
}