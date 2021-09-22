
//Cutscene 12 (Post Battle 21)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        view_object[0] = viewing_obj;
        CutsceneCamera.CameraPathfinding = true;
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(30,0,string(WordWrap("It seems I've been defeated, my magical powers are exhausted... I must cast away this life for... At least... I'll sacrifice myself for you, Lord Darksol!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 210){
                    Character = self.id;
                    direction = 90;  
                    instance_change(misc_dis,true);                     
                }   
        }  
    Cutscene45();
    break;      

    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Mishaela sacrificed her life for Darksol's revival...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 235){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Down",4,1);                         
                }   
        }  
    view_object[0] = Character;
    break;      

    case 6:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(26,0,string(WordWrap("Mishaela's life has completed the revival of my powers. Now, take a good look at the true form of Darksol, King of the Devils!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State =  2000;
        PanOutDialogueBasic();
    break;
    
    case 2000:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_red,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 2001:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
    
    case 2002:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;

    case 2003:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
            
    case 2004:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 2005:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
    
    case 2006:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 2007:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        room_goto(BattleRoom22Cutscene);
        alarm[0] = 50;
    break;        
}      