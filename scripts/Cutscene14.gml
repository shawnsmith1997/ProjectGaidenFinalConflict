//Cutscene 13 (Pre Battle 7)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 100;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
   break;
   
   case 100:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Step by step and day by day, " + global.Name[1] + " and his Force draw nearer to Grans Tower.  However, following their unexpected escape, Mishaela is waiting for their arrival...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;   
   break;
   
    case 101:
        State = 1;
        PanOutDialogueBasic();
        with(ScreenFadeControler){
            instance_destroy();
        }
    break;   
     
   case 1:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Lynx, how are the plans to capture Max progressing?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 1000;
        PanOutDialogueBasic();
        break;
    
    case 1000:
    State = 4;
        var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1.5);         
                }
                   
        }
        
    break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("They're going well. If they continue as planned, we will soon have Max.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Excellent. By the way, Eiku, what became of " + global.Name[1] + " and his party?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 8;
        var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1.5);         
                }
                   
        }
        
    break;    

    case 8:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("Well... I've been informed that they were able to defeat your guards... and after they reached Bedoe, Volcanon appeared to them. Magus thinks that a search for them should be carried out, to ensure they don't disturb you while you raise all that energy...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 10;
        var Character;
            with(GenericCutsceneNPC){

                if(ID = 210){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1.5);         
                }
                   
        }
        
    break;    

    case 10:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("So, Magus! Is everything going to be alright?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 12;
        var Character;
            with(GenericCutsceneNPC){

                if(ID = 220){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1.5);         
                }
                   
        }
        
    break;    

    case 12:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Hehehe! Don't worry. If by any chance they should get through Pacalon, we'll find them and consign them to oblivion!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Good. You should go to Pacalon immediately!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;        

    case 16:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Hehehe... I will... hehehe",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 18;
        
        var Character;
            with(GenericCutsceneNPC){

                if(ID = 220){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",12,1.5);         
                }
                   
        }
        
    break;      

    case 18:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("By the way... what purpose will the old man from Hassan serve?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Haven't you guessed? The old man has knowledge of ancient history, we can make use of this, and use the knowledge against " + global.Name[1] + ". There's still some way to go before we will need this information, as we haven't yet found the ancient ruins. But... you'll be lucky if you can find them by standing there and boasting!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 22:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("But, " + global.Name[1] + " shouldn't prove to be a problem for us. It'll be mere child's play, especially when Max changes sides and becomes " + global.Name[1] + "'s enemy, eh?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("I know you'll be really pleased when I return with him!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Eiku!#That is not your task... ... at least, not for now.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 30;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("But, after I've defeated him, Eiku won't have a chance, hehehe!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("What are you saying, Lynx?! I'm not happy with my role in this plan. Why do I have to be the one to go after " + global.Name[1] + "?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 34:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("You heard me! I don't know what makes you think you can apply for my job!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 35:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 36:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Even if he does, Lynx, it's your job to capture Max.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 37:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 38:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Right... that's settled! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 39:
    State += 1;
    PanOutDialogueBasic();    
    break;
    
    case 40:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Magus should be able to defeat Ian and his team without and problems, but it's your job to make sure Eiku, and if he fails then it's your turn.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 41:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 42:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("Ah, that's a relief to know! I'll bring him down, that's for sure - just you watch me!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 43:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 44:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Hohoho, Eiku! Those are very promising words indeed! " + global.Name[1] + ", you're really going to have to try your best, because we're watching you! Ohohoho!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 45:
        State += 1;
        room_goto(BattleRoom07Cutscene2);
        instance_destroy();
    break;

}