//Cutscene 13 (Post Battle 6)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 2000;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj2;
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
        State = 1;
                var Character;
        with(GenericCutsceneNPC){

            if(ID = 207){
                Character = self.id;
                direction = 270;  
                MoveCharacter(Character,"Down",3,1.5);         
            }
                   
        }
    break;    
     
   case 1:
        State = 3;
        CreateDialogueBasic(22,0,string(WordWrap("My thanks to you, " + global.Name[1] + " and your Force.",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(28,0,string(WordWrap("Who are you?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(22,0,string(WordWrap("I am Volcanon.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("You're Volcanon...#But how did you know " + global.Name[1] + "'s name?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(22,0,string(WordWrap("I've been watching the Devil Army's movements regularly. On one occasion they appeared, and " + global.Name[1] + " was there with Max.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("I see.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(22,0,string(WordWrap("We are worried because it is possible that the Devil Army has some treacherous plan involving Grans Tower. We must put an end to their wicked plans!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So... What should we do?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(22,0,string(WordWrap("You and your companions should go to Grans Tower, and try to find a solution to this. Max is there too, it's important that you find a way to help him.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Going to Grans Tower... what a great idea!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
        State = 22;
                var Character;
        with(GenericCutsceneNPC){

            if(ID = 9){
                Character = self.id;
                direction = 90;  
                MoveCharacter(Character,"Up",9,1.5);         
            }
                   
        }
    break; 

    case 22:
        State += 1;
        CreateDialogueBasic(9,0,string(WordWrap("I agree, and I'd like to come along too.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Didn't we see you earlier...?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(9,0,string(WordWrap("Teehee! Yes, you saw me earlier... we weren't prepared for that kind of trouble.#I know I'll be a real asset to your team, because I can fly.#What do you think, Volcanon? If you let me go, I'll be good!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 30;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        CreateDialogueBasic(22,0,string(WordWrap("Hmm...#You should show " + global.Name[1] + " and the others how well you can fly.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        CreateDialogueBasic(9,0,string(WordWrap("I already did! If you really want peace, then please let me fight the Devil Army with you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 34:
        State += 1;
        sound_play(JoinBGM2)
        CreateDialogueBasic(0,0,string(WordWrap("Kiddo the Birdman joins the Shining Force.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 35:
        State += 1;
        sound_stop(JoinBGM2)
        sound_loop(SF1Theme)
        PanOutDialogueBasic();
    break;

    case 36:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("By the way, Volcanon, how are we going to get to Grans Tower?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 37:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 38:
        State = 3000;
        CreateDialogueBasic(22,0,string(WordWrap("It is your destiny to go, and so you will get there - a way will become clear to you. This cave will begin the next stage of your journey.#I will always be watching over you, " + global.Name[1] + "!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 3000:
    State += 1;
    view_object[0] = viewing_obj;
                    var Character;
        with(GenericCutsceneNPC){

            if(ID = 1){
                Character = self.id;
                direction = 0;  
                MoveCharacter(Character,"Right",3,1.5);         
            }
                   
        }
    PanOutDialogueBasic();    
    break;
    case 3001:
        State += 1;
        CreateDialogueBasic(1,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 3002:
        State += 1;
        PanOutDialogueBasic();   
    break;    
    
    case 3003:
    State = 39;
    var Character;
        with(GenericCutsceneNPC){

            if(ID = 1){
                Character = self.id;
                direction = 90;  
                MoveCharacter(Character,"Up",3,1.5);         
            }
                   
        }
    break;    
    
    case 39:
        State += 1;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        alarm[0] = 60;
    break;
    
    case 40:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Having met Volcanon, " + global.Name[1] + " and the others#must now travel to Grans Tower.#However, this is only the beginning!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 41:
        State = 47;
        PanOutDialogueBasic();
    break;

    case 42:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Ruburan, is that true?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 43:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 44:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Chapter 1 - The Ancient Shrine, a New Journey Begins # The End",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        DisableDialogueBasic(false);
    break;

    case 45:
        State += 1;
        CreateYesNoBasic(self.id);
    break;

    case 46:
        if(YesNoAnswer = 'yes'){
            State += 1;
            StartNewDialogueBasic(WordWrap("Saved!",200,'#',false),true);
        }
        else{
            State += 1;
            StartNewDialogueBasic(WordWrap("Not Saved!",200,'#',false),false);
            DisableDialogueBasic(false);
        }
    break;

    case 47:
        State += 1;
        room_goto(Chapter1End);
        instance_destroy();
    break;
}