//Cutscene 8 (Pre Battle 4)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 998;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject; 
        break;
   
   case 998:
        State = 999;
        CreateDialogueBasic(8,0,string(WordWrap("Once we cross this bridge, we can get to my secret hideout. ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
   break;
   
   case 999:
        State = 1000;
        PanOutDialogueBasic();  
   break;          
        
   case 1000:
        view_object[0] = viewing_obj; 
        State = 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Up',6,1);
            }                     
        } 
        break;      
    
    case 2:
        State = 1;
    break;
        
    
    case 1:
        State = 3;
        CreateDialogueBasic(8,0,string(WordWrap("I'll lead the way again.#Well, everyone - quickly, follow me across!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;   

    case 3:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State += 1;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 6){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Up',3,1);
            }
        }
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 1){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Up',3,1);
            }
        }
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 207){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Up',3,1);
            }                        
        } 
    break;
    
    case 1005:
    State += 1;
    alarm[0] = 200;
    room_goto(BattleRoom04Cutscene_2);
    break;
    
}