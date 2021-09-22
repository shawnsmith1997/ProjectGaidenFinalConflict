
//Cutscene 12 (Post Battle 16)
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
        instance_create(0,0,fadingObject)
        sound_play(SpellCastSound);
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Ohohoho! You think you've defeated me, but think again!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Th... that voice!?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 14;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",2,1);                         
                }   
        }  
    break;     

    case 14:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Didn't you think that was a bit too easy, Adam?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("If that's the case... Was the Mishaela we just defeated an impostor?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Hohoho! That was my other self, Mishaela Doll! How dare you threaten my cute little doll!? Thanks for letting me get on with Lord Darksol's revival meanwhile!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("!!! So, that's what it was? And, that's your goal, to revive Darksol? Surely after Dark Dragon was defeated, we would have seen him escape? Knowing this, we must continue!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Our revival of Lord Darksol will be completed at Grans Tower, why don't you come along?! He'll be fully revived before long. Feh... hohohoho! However before this, please accept this token of my appreciation...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 24;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 206){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,1.5);                         
                }   
        }  
    break;    

    case 24:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("Look out, Adam!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 1003;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 206){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,1.5);                         
                }
                if(ID = 207){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,1.5);                         
                }                     
        }  
    break;  
    
    case 1003:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("No! Elder!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 1004:
        State = 1005;
        PanOutDialogueBasic();
    break;
    
    case 1005:
    State = 26;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 216){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",8,2.5);                         
                }   
        }  
    break;    

    case 26:
        State += 1;
        room_goto(BattleRoom16CutscenePost3);
    break;
    }