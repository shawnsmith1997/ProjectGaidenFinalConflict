
//Cutscene 12 (Post Battle 12)
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
        CreateDialogueBasic(14,0,string(WordWrap("Hohoho! Hoho, so you're here! I remember hearing all about you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 14){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",10,1);                         
                }   
        }
    view_object[0] = Character;    
    break;  

    case 4:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(28,0,string(WordWrap("W....who are you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 1008:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 14){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1);                         
                }   
        }
    break;      

    case 6:
        State += 1;
        //view_object[0] = viewing_obj3;   
        CreateDialogueBasic(14,0,string(WordWrap("So, you're not leaving yet? I'm Morton, and as I said, I've been training hard as a monk. It seems the Devil Army used great skill in their perfect defeat of Max. Although they did well, you just won't believe it, hohoho!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Max?! You know Master Max? Please, tell me more! Max is my master!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("Hohoho, is that so? You're Max's companion? We made the rough crossing from Parmecia to Grans together... that's how we know each other.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So, Max is here now?! Please, let us see him!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("Unfortunately he's not here to see. I alone remain here, studying this waterfall to find it's supernatural powers.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So then, Mr. Morton, you don't know where Max is?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("Unfortunately, that's the case. I only know the way Max went...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So, where was that?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;     

    case 21:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 22;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 14){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",3,1);         
                }   
        }
        view_object[0] = viewing_obj3;
    break;  

    case 22:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("I'll remember in a minute... don't be impatient! Well, I've decided I should probably go with you. Even though I can't remember, it has been quite some time, and we should get going!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 24;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 14){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",3,1);         
                }   
        }

    break;  

    case 24:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Morton the Mastermonk joined the Force",200,'#',false)),self.id,true);
        sound_play(JoinBGM2);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        sound_loop(ElvenTown);
        CreateDialogueBasic(14,0,string(WordWrap("We must help to get justice for our hero. After all, what have I been doing all this training for?! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;     

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(14,0,string(WordWrap("Max has probably been taken to the devil's stronghold at Ground Seal's ancient tower. So, I assume that's where we'll be going too.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State += 1;
        PanOutDialogueBasic();
    break;                 

    case 30:
        State += 1;
        room_goto(Town1);
        instance_destroy();
    break;
}