//Cutscene 16 (Pre Battle 8)
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
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Fight! If we defeat them in this battle, we can take over the city of Pacalon!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 4;
        PanOutDialogueBasic();
        break;
    
    case 4:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(24,0,string(WordWrap("You're too slow! Why are there still some Pacalon troops remaining undefeated?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Well, Master Magus... The Pacalon force have grouped together in resistance - we can't defeat them!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 8:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Well, their actions won't help them now, we'll end this soon! We'll make that river overflow! Pacalon's soldiers will have a drink of water like they've never had before! Heh heh heh!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State = 1001;
        PanOutDialogueBasic();
    break; 

    case 1001:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_blue,255,100,0,'none',self.id);
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
        State = 26;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;

    case 26:
        State += 1;
    room_goto(BattleRoom08Cutscene2);
    break;
}