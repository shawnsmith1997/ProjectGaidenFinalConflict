//Cutscene 8 (Pre Battle 4)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1006;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj; 
        break;
   
   case 1006:
        State = 1007;
        CreateDialogueBasic(8,0,string(WordWrap("What?!!#What on earth is that?#Something's happening!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;   
    break;   
    
    case 1007:
        State = 1008;
        PanOutDialogueBasic();
    break;
    
    case 1008:
    State = 1009;
    view_object[0] = viewing_obj3;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 212){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Left',5,2.4);
            }                     
        } 
    break;
    
    case 1009:
    State = 1010;
    CreateScreenFade(c_black,1,1,0,'none',self.id);
    sound_play(CriticalSound);
    alarm[0] = 100;
    break;
    
    case 1010:
    State = 1011;
    view_object[0] = viewing_obj2;
    with(ScreenFadeControler){
            instance_destroy();
        }
    alarm[0] = 100;
    break;
    
    case 1011:
    State = 1012;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 213){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,'Right',4,2.4);
            }                     
        } 
    break;
    
    case 1012:
    sound_play(CriticalSound);
    State = 1013;
    CreateScreenFade(c_black,1,1,0,'none',self.id);
    alarm[0] = 50;
    sound_play(HitSound);
    break;
    
    case 1013:
    State = 4;
    view_object[0] = viewing_obj;
    with(ScreenFadeControler){
            instance_destroy();
        }
    alarm[0] = 50;
    break;
    
    
    case 4:
        State = 2000;
        CreateDialogueBasic(28,0,string(WordWrap("Ruburan, this looks dangerous.#Hurry - the bridge is breaking to pieces!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 2000:
    State = 5;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,'Down',5,2.4);
            }                     
        } 
    view_object[0] = Character;
    break;
       
    case 5:
        State += 1;
        PanOutDialogueBasic();
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        sound_play(CriticalSound);
        alarm[0] = 100;
    break;    
    
    case 6:
        State += 1;
        sound_play(CriticalSound);
        room_goto(BattleRoom04Cutscene_3);
        alarm[0] = 100;
    break;  
}