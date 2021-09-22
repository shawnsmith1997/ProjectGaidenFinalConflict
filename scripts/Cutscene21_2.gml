//Cutscene 21 (Post Battle 10)
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
        CreateDialogueBasic(12,0,string(WordWrap("I trust the battle went well? It looks like the Devil Army managed to get away again, didn't they?",200,'#',false)),self.id,true);
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

                if(ID = 12){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1.5);         
                }   
        }
    break;      

    case 10:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("You're the one who was taken to see Magus!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;  

    case 12:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("That's right, I'm Eric. Although I was part of Mishaela's Devil Army, they discovered my real intentions, and took me before Magus.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So, why do you want to see Mishaela?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;        

    case 16:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("My father, Elliot, worked for King Ramladu. But, the Devil Army manipulated the King, and made him a wicked man...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;     

    case 18:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("My master, Max, told me of Elliot. He was a proud warrior.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("He was a great man. He may have made some mistakes, but he never betrayed his King.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 22:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("That's right... ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("But despite that, father should have fought against the Devil Army. I want to defeat the Devil Army - please let me join you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        sound_play(JoinBGM2);
        CreateDialogueBasic(0,0,string(WordWrap("Eric the Dragon Warrior joined the Force.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 30;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        sound_loop(TownOST);
        CreateDialogueBasic(12,0,string(WordWrap("Since Moun and it's people are safe and peaceful again, we should stay here and heal any injuries before we begin our journey.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        room_goto(Town1);
    break;
}