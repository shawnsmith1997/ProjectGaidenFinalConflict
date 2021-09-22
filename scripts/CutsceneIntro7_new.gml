
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 13;
    break;    
    
    case 13:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Ridion, I'm concerned about Adam and the others. Let's hurry up and rejoin them.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 14:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 15:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("With this, Mishaela, it's time for you to die. Your anger is useless, this is it.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 16:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 17:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Oh, ho ho ho! You're wrong, I'm not hurt. Eiku, destroy those hindering pests!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 18:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 19:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("Don't even think about giving Mishaela any trouble. Take this... Blaze level 3! Hah hah hah ha! You'd do well to realise just how much power I have.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 20:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 21:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Now Lynx, Eiku, Magus - Let's Go!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 22:
        State += 1;
        PanOutDialogueBasic();
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
        State += 1;
        PanOutDialogueBasic();
    break;  
    
    case 41:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("So, you're not leaving yet? I'll cast Spark level 3! Your turn, Magus!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 42:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 43:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("A chase! Freeze Level 2!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 44:
        State += 1;
        PanOutDialogueBasic();
    break;   
    
    case 45:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Whaddya think of that, Max? Oh ho ho ho!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 46:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 47:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Ridion, we must destroy Mishaela and her devils to stop their evil plan... at all costs!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 48:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 49:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("Yes, we will defeat them!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 50:
        State = 90;
        PanOutDialogueBasic();
    break;                                                                                           
             

    case 90:
        State += 1;
        room_goto(CutsceneIntroRoom_6);
        instance_destroy();
    break;
}
