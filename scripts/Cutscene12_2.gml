//Cutscene 12 (Pre Battle 6)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 8;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj2;
        break;
    
    case 8:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Ah, good job!#Now's our chance to seal away Volcanon's power!#Ooooh!#Shaaaa!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 2000:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_black,255,100,0,'none',self.id);
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
        alarm[0] = 50;
    break;     
    
    case 2008:
        sound_stop(Battle3BGM);
        sound_loop(EvilIntention);
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Oh, ho ho ho!#Volcanon's power has been sealed away!#Those troublesome kids can't interfere with our dream anymore! Oh ho ho ho!#We must prepare to return to Grans Tower - with Volcanon seen to, there's no need for us to remain here...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;    
    
    case 2009:
        State = 10;
                var Character;
        with(GenericCutsceneNPC){

            if(ID = 210){
                Character = self.id;
                direction = 90;  
                instance_change(misc_dis, true);       
            }
                   
        }
        PanOutDialogueBasic();
    break;       
    
    case 9:
        State = 2000;
        PanOutDialogueBasic();
    break;

    case 10:
        view_object[0] = viewing_obj;
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Mishaela's escaped!#Quickly " + global.Name[1] + ", after her!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        view_object[0] = viewing_obj2;
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("If you want to pass through here, you'll have to get past us first!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("It seems we've been discovered...#We have no choice but to defeat them, if we're to progress.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 16:
        State += 1;
        room_goto(BattleRoom06);
        instance_destroy();
    break;
}