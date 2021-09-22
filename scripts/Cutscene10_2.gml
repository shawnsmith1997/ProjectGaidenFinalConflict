//Cutscene 10 (Pre Battle 5)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 20;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj2; 
        break;
    
   case 20:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Oh, what a surprise!#You want to come after me... but hear this!#You and your followers have no chance to defeat the devil army. You'll burn in a living hell!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 215){
                Character = self.id;
                direction = 180;
                MoveCharacter(Character,"Right",2,3);
            }                  
        }
        view_object[0] = Character; 
    break;
    
    case 1001:
        State += 1;
        sound_play(BoltHitSound);
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 215){
                Character = self.id;
                direction = 180;
                MoveCharacter(Character,"Right",3,3);
            }
            
            if(ID = 8){
                Character = self.id;
                direction = 180;
                MoveCharacter(Character,"Right",3,3);
            }                   
        } 
    break;
    
    case 1002:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 215){
                Character = self.id;
                direction = 180;
                instance_destroy();
            }
            
            if(ID = 8){
                Character = self.id;
                direction = 180;
                instance_change(RuburanFainted, true);
                alarm[0] = 50;
                room_goto(BattleRoom05Cutscene_3);
            }                 
        } 
    break;
    
    case 1003:
        State += 1;
        room_goto(BattleRoom05Cutscene_3);
    break;           

}