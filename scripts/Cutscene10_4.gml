//Cutscene 10 (Pre Battle 5)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1001;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj; 
        break;
    
    case 1001:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_yellow,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 1002:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
    
    case 1003:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;

    case 1004:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
            
    case 1005:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 1006:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
    
    case 1007:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 1008:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
    
    case 1009:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 301){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",5,2);
            }                  
        }
    break;
    
    case 1010:
        sound_play(BoltHitSound);
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 302){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",5,2);
            }                  
        }
    break;

    case 1011:
        sound_play(BoltHitSound);
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 303){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",5,2);
            }                  
        }
    break;
    
    case 1012:
        sound_play(BoltHitSound);
        State = 25;
        room_goto(BattleRoom05Cutscene_5);                                                   
    break; 
}