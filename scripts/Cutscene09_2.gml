//Cutscene 9 (Post Battle 4)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 10;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj; 
        break;
    
    case 10:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("It seems there's only one way forward for us now.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State += 1;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,"Up",2,2);
            }                     
        } 
    break;
    
    case 1001:
    State = 12;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,"Right",2,2);
            }                     
        } 
    break;    

    case 12:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Chief Ruburan, we've been waiting urgently for your return!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Oh, Nosshu?#Why did you sneak away from the others?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("It's serious boss! I somehow managed to escape in the panic and confusion!#That woman came back... we didn't expect it. She's dangerous - the others are in great distress!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State = 2000;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Hmm.. sounds like Mishaela to me, don't you think?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 2000:
        State = 18;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 207){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,"Up",1,2);
            }
            if(ID = 1){
                Character = self.id;
                direction = 90;
            }          
            if(ID = 8){
                Character = self.id;
                direction = 270;
            }                             
        } 
    break;
    
    case 20:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Yes, it does.... Let's hurry to my secret base!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 21:
        State += 1;
        PanOutDialogueBasic();
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 207){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,"Up",10,2);
            }
            if(ID = 1){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,"Up",10,2);
            }          
            if(ID = 8){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,"Up",10,2);
            }
            if(ID = 214){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,"Up",10,2);
            }                                
        } 
    break;
    
    case 22:
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        alarm[0] = 100;
        State += 1;
    break;
    case 23:
        alarm[0] = 100;
        State += 1;
        room_goto(Town1);
        instance_destroy();
    break;
}