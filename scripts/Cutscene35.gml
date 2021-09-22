
//Cutscene 12 (Post Battle 17)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(20,0,string(WordWrap("So, the rumours of the Shining Force's strange powers were... If that's the case, perhaps it's possible that you're the only ones who really can defeat Mishaela.",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(28,0,string(WordWrap("Sir Lynx...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("It's futile to have sympathy for one who's been defeated. It seems our group should hand over Ridion. Come out!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("Adam!!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 1000;
        PanOutDialogueBasic();
    break;

    case 1000:
    State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",7,1);                         
                }   
        }  
    break;  

    case 10:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Oh, that can't be Ridion, can it?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("Adam, at last we meet again!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Uughh... #M... Mishaela always said that I...#..I should not resist death... uuughhh..",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("S... Sir Lynx... Master Max and I were defeated in a battle with Sir Lynx. The fight was admirable - absolutely fair and square.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So, what happened?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("After that we were taken to Mishaela's place. She gave Lynx an order for my death, and Master Max is currently still under Mishaela's supervision.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("S... Sir Max is in Ground Seal's ancient tower. U... unfortunately, both Darksol and his opposition, the Devil King Zeon are both at that place. Evil power gathers there... and it seems soon they will be celebrating the use of this power!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So, they're at the place where the Devil King Zeon is sealed away. And the evil power is going to be used for the revival of Darksol? What a terrible situation!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("S...Sir Ridion, you have luck on your side. U...uggghhhh...ughha.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 1001;
        PanOutDialogueBasic();
    break;

case 1001:
    State = 28;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 90;  
                    instance_change(obj_explosion2, true);                       
                }   
        }
        Cutscene35();  
    break;  

    case 28:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap( "...Adam... Let's go to the Anicent Tower, to cosign Darksol to oblivion. I may have been saved, but Sir Lynx and his exemplary conduct were not.",200,'#',false)),self.id,true);
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