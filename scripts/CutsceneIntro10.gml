
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 23;
    break;       
    
    case 23:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("A.. Adaaaam! ... Adam, are you alright?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 24:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 25:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("... Master Max...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 26:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 27:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Mishaela has damaged Adam... Mead, Paige, Sonette, you stay here and help Adam. Ridion, follow me, we'll go after Mishaela!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 28:
        State += 1;
        PanOutDialogueBasic();
    break;  
    
    case 29:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("Please don't leave me here - let me come and fight with you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 30:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 31:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Mead, don't say such things. Someone has to stay and assist Adam, haven't they?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 32:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 33:
        State += 1;
        CreateDialogueBasic(4,0,string(WordWrap("What a thing to say! I'm concerned that only two people are going though...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 34:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 35:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("It'll be okay Paige. We can't let you go too, gallant though you are.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 36:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 37:
        State += 1;
        CreateDialogueBasic(3,0,string(WordWrap("Max and the others won't be harmed.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 38:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 39:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("That's right Sonette. So, Ridion will go with me in Adam's place. Just you wait, Mishaela!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 40:
        State = 1006;
        PanOutDialogueBasic();
    break;
    
    case 1006:
    State = 90;
    var Character;
            with(GenericCutsceneNPC){
                if(ID = 18){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",8,1);                            
                }
                if(ID = 16){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",8,1);                            
                } 
            
        }  
    break;      
                                                                                                         
    case 90:
        State += 1;
        room_goto(CutsceneIntroRoom_11);
        instance_destroy();
    break;
}