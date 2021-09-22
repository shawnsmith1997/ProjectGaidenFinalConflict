
//Cutscene 12 (Pre Battle 16)
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
        CreateDialogueBasic(30,0,string(WordWrap("You dwarves, hurry up! You've got no right to take a break, you're slaves!",200,'#',false)),self.id,true);
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

                if(ID = 210){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",9,1);                         
                }   
        }

    break;     

    case 4:
        State += 1;
        view_object[0] = viewing_obj3;
        CreateDialogueBasic(0,0,string(WordWrap("Your eminence, we've received word that the enemy has escaped Eiku's Fortress and will be arriving here before long. I'm sorry to say that they were not crushed beneath the crumbling Fortress.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 210){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1);                         
                }   
        }

    break;    

    case 6:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("So... they're already on their way here. This means Eiku must have performed pitifully. Well, the preparations here are almost finished. It seems we should be able to do this.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State = 2009;
        PanOutDialogueBasic();
    break;
    
    case 2009:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 210){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1);                         
                }   
        }

    break; 

    case 8:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Ian's surprise appearance may be a good opportunity for us...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(28,0,string(WordWrap("Ian, we escaped the collapse of the Fortress by a hair's breadth, didn't we?! Ahh, of course the Devil Army are waiting for us here, too. It also seems like they've caught some dwarves for slaves, eh?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("For some reason these young, weak dwarves are being used in this valley. But what are they doing? I don't know, but I think we should be cautious in crossing this valley.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Ah, over there - it's Mishaela.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 16;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1000){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",16,1);                         
                }   
        }
    view_object[0]=Character;
    break;      

    case 16:
        State += 1;
        view_object[0]=viewing_obj2;
        CreateDialogueBasic(28,0,string(WordWrap("Ian, now's your chance to defeat Mishaela for sure!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        room_goto(BattleRoom16);
        instance_destroy();
    break;
}