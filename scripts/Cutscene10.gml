//Cutscene 10 (Pre Battle 5)
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
        CreateDialogueBasic(30,0,string(WordWrap("I'm sorry to say that your dear chief Ruburan won't be coming to save you!#How do you feel about that then? He can't help you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 3:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Is.... is that true?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("It's true.#You scoundrels can't avoid it this time. We are the devil army, working together to cause misery and misfortune!#Understand this - we will defeat your god Volcanon as soon as we can! And that's only the beginning!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Volcanon...!#Please wait a moment...#Volcanon... it can't be so! You're a god! We need your protection!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("What a surprise... it's that woman again, and her demons!#She must have a wicked plan in mind...#Looks like I arrived just in time to help my men.#Wait right there Mishaela, it's time for you to get what you deserve. I don't appreciate being talked about behind my back!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State = 1000;
        PanOutDialogueBasic();
    break;

    case 1000:
    State = 12;
    view_object[0] = viewing_obj2; 
       var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 180;
                MoveCharacter(Character,"Left",4,2);
            }
            if(ID = 210){
                Character = self.id;
                direction = 0;
            }                      
        }  
    break;
    
    case 12:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Oh, Ruburan... I'm surprised you came back here to oppose me!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("In spite of what you devils say, we'll settle this matter here and now!#Our way is to strive for victory, right men?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Surely you realise there's no point in trying to save them?!#Evil has returned forever, to rule the world!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Damn you!#Stay right there...!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 19:
        State = 2000;
        PanOutDialogueBasic();
    break;
    // Ruburan faints from blast
    
    
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
        room_goto(BattleRoom05Cutscene_2);
        alarm[0] = 50;
    break;        
}