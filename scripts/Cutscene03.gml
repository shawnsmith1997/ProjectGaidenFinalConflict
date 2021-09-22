//Cutscene 3 (After Battle 1)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State = 999;
        instance_create(0,0,CutsceneCamera);
        instance_create(312,648,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject; 
        break;
    
    case 999:
    State = 1;
    CreateDialogueBasic(8,0,string(WordWrap("What?!#My men can't have been defeated!I think now's the time for a hasty exit.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
            
    case 1:
        State = 200;
        PanOutDialogueBasic();
    break;

    case 199:
    State += 1;
    alarm[0] = 60;  
    break;
    
    case 200:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 902){
                Character = self.id;
                direction = 270;
            }
        }
        MoveCharacter(Character,'Right',1,2);
    break;
    
    case 201:
        State += 1;
        alarm[0] = 60;
    break;
    
    case 202:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 900){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Right',1,2);
        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 901){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Right',1,2);
    break;
    
    case 203:
        State += 1;
        alarm[0] = 60;
    break;
    
    case 204:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 902){
                Character = self.id;
                direction = 270;
            }
        }
        MoveCharacter(Character,'Left',1,2);
    break;
    
    case 205:
        State += 1;
        alarm[0] = 60;
    break;
    
    case 206:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 900){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Left',1,2);
        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 901){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Left',1,2);
    break;
    
    case 207:
        State = 300;
    break;

    case 300:
    State+=1;
    CreateDialogueBasic(2,0,string(WordWrap("I suppose you must be one of Mishaela's minions, since you're here at the ancient temple trying to damage things. We can't let you go free until we have decided there is good reason to do so.",200,'#',false)),self.id,true);
    DialogueControler.Voice = Dialogue5Sound;
    break;

    case 301:
    State = 3;
    PanOutDialogueBasic();
    break;
    
    case 3:
        State = 208;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 900){
                Character = self.id;
                direction = 180;
            }
        }
        MoveCharacter(Character,'Right',1,2);
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 901){
                Character = self.id;
                direction = 0;
            }
        }
       
    break;

 case 208:
        State += 1;
        alarm[0] = 60;
        
    break;

 case 209:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 902){
                Character = self.id;
                direction = 270;
            }
        }
        MoveCharacter(Character,'Down',2,2);
       
        
    break;

  case 210:
        State -= 206;
        alarm[0] = 60; 
    break;
    
    case 4:
        State = 60;
        CreateDialogueBasic(8,0,string(WordWrap("You can't catch me, I won't go with you!#Eh... damn!#I've been caught! The great Ruburan is ruined!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 60:
        State = 5;
        PanOutDialogueBasic();
    break;
    
    case 5:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Who are you and your gang?#What were you doing here?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 6:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 7:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("This guy's a heretic! He was trying to steal that anicent relic!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 8:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 9:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Hey! You're wrong!#I don't deserve this treatment!#What to do, what to do?!#I doubt there'll be another chance to escape...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 10:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 11:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("It's a long shot, but perhaps you know what Mishaela's plan is?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 12:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 13:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Eh? What?#I don't recognise that woman's name.#My coming here was nothing to with your business here...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 14:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 15:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("Well then, what was your gang of ruffians doing here at the ancient ruins, I wonder?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 16:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 17:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Wait just a minute!#We'd only been here a short while before you came here and caught us.#We were trying to make that ancient relic work somehow...#In any case, it looks like you're going to make me come with you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 18:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 19:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("This fellow must be a criminal, trying to steal that ancient relic. We can't allow him to go.#What do you think we should do, Adam?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 20:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 21:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Well, first of all we should probably return to Hassan to discuss this with the Elder.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 22:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 23:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("That's a good idea.#Perhaps that suspicious woman Mishaela has had the same idea...#If she has, we may be able to pick up Max's trail more easily...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 24:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 25:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("In case she has, we should hurry back to Hassan immediately.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 26:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    
    case 27:
        State += 1;
        global.StoryState = 3
        room_goto(BattleRoom02Cutscene);
        instance_destroy();
    break;
}