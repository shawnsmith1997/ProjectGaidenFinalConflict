//Cutscene 6 (Post Battle 3)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1000 ;
        instance_create(0,0,CutsceneCamera);
        instance_create(360,96,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject; 
        break;
   
   case 1000:
           State += 1;
           var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 270;
            }            
        } 
   MoveCharacter(Character,'Down',5,2);
   break;   
   
   case 1001:
           State += 1;
           var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 90;
            }            
        } 
   MoveCharacter(Character,'Up',6,2);
   
   break;    
   
   case 1002:
           State = 1;
           var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 270;
            }            
        } 
   MoveCharacter(Character,'Down',1,2);
   
   break;   
   
   case 1003:
           State = 1;
           var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 180;
            }            
        } 
   
   
   break;    
        
   case 1:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("That was easy, wasn't it?! You all put up a great fight!#Oh, look over there - a camp! What a relief! I suppose we should go there.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
    view_object[0] = viewing_obj; 
        State = 4;
        PanOutDialogueBasic();
        break;
    
    case 3:
        State += 1;
    break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap(global.Name[1] + ", let's hurry to the camp.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("Wait " + global.Name[1] + "!#I want to come with you!#I.... I couldn't just stay back there doing nothing.#I was so worried about the Elder. In spite of what you said, I've decided I have to come with you all.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    
    
    case 7:
        State = 2000;
        PanOutDialogueBasic();
    break;

    case 2000:
    State = 8;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 6){
                Character = self.id;
                direction = 90;
            }            
        } 
   MoveCharacter(Character,'Up',8,2);
       view_object[0] = Character; 
    break;
        
    case 8:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("What do you say, should this young girl come with us? You'd best decide quickly.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Cynthia, even though you've come all this way, you must return alone. It's just far too dangerous for you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("I won't need much help from everyone else. But, I can help you a lot. If anyone is injured, I can heal them!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Well " + global.Name[1] + ", what do you think? Should we let her accompany us?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Cynthia joins the Shining Force.",200,'#',false)),self.id,true);
        sound_play(JoinBGM2);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        sound_loop(Battle1OST);
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State = 3000;
        CreateDialogueBasic(6,0,string(WordWrap("Thank you! Well then, let's hurry to Ribble Camp.#I'm sure we'll be welcome, because we're from Hassan.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 3000:
    State = 19;
    view_object[0] = viewing_obj; 
            with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,'Right',6,1);
            }
            if(ID = 6){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,'Right',6,1);
            }
            if(ID = 1){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,'Right',6,1);
            }
            if(ID = 207){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,'Right',6,1);
            }                        
        } 
   
    break;
    
    
    
     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 20:
        State += 1;
        sound_stop(JoinBGM2);
        room_goto(Town1);
        instance_destroy();
    break;
}