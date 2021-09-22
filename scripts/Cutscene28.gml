
//Cutscene 12 (Pre Battle 14)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj2;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(23,0,string(WordWrap("It seems like my scouting party must have been defeated.",200,'#',false)),self.id,true);
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

                if(ID = 219){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }

    break;     

    case 4:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("My order to avoid the battle and lure the enemy out must have been ignored.",200,'#',false)),self.id,true);
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

                if(ID = 219){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,1);                         
                }   
        }
    break;     

    case 6:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("Magus was defeated, and yet vanity doesn't seem to come with their strength.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",2,1);                         
                }   
        }
    break;       

    case 8:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("Even if they say they're the Shining Force, it's not necessarily true. They could be lying...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,1);                         
                }   
        }
    break;       

    case 10:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("That's right, Eiku. The time draws near, and we shall fight well for retribution.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State = 1005;
        PanOutDialogueBasic();
    break;
    
    case 1005:
    State = 12;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",1,1);                         
                }   
        }
    break;       

    case 12:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("Lynx!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State = 1006;
        PanOutDialogueBasic();
    break;
    
    case 1006:
    State = 14;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",8,1);                         
                }   
        }
    break;     

    case 14:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Indeed.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("How are your battle preparations progressing?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("What are you talking about!?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State = 1020;
        PanOutDialogueBasic();
    break;
    
    case 1020:
    State = 20;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }
    break;      

    case 20:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("You allowed Magus to die, because you didn't help him.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State = 1021;
        PanOutDialogueBasic();
    break;
    
    case 1021:
    State = 22;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",1,1);                         
                }   
        }
    break;      

    case 22:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("At any rate, it's your business.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State = 1023;
        PanOutDialogueBasic();
    break;
    
    case 1023:
    State = 24;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",2,1);                         
                }   
        }
    break;  

    case 24:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("I too will take damage if I stay, however, considering the situation, I'm probably needed. If those guys enter my fortress, they will come to a nasty end.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State = 1024;
        PanOutDialogueBasic();
    break;
    
    case 1024:
    State = 26;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Up",1,1);                         
                }   
        }
    break;      

    case 26:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Eiku, are you saying that I allowed Magus to die? ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 1025;
        PanOutDialogueBasic();
    break;
    
    case 1025:
    State = 28;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,1);                         
                }   
        }
    break;      

    case 28:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("So... Is there anything else you'd like to say to me now? It's nothing but an excessive excuse. You'd better start worrying, Eiku, it's going to be hard for you to win this one.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State = 1010;
        PanOutDialogueBasic();
    break;
    
    case 1010:
    State = 31;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 180;  
                    instance_change(misc_dis,true);        
                }   
        }
        Cutscene28();    
    break;    

    case 31:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("...is he gone? Looks like those guys have arrived.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 32:
        State = 1011;
        PanOutDialogueBasic();
    break;
    
    case 1011:
    State = 33;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }
    break;     

    case 33:
        State += 1;
        view_object[0] = viewing_obj;
        sound_stop(EvilIntention);
        sound_loop(SFBattle4);
        CreateDialogueBasic(28,0,string(WordWrap("We're here to fell this fortress, isn't that right men?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 34:
        State += 1;
        PanOutDialogueBasic();
    break;  

    case 35:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(23,0,string(WordWrap("Everyone, those guys are here - now knock them down completely!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 36:
        State = 1012;
        PanOutDialogueBasic();
    break;
    
    case 1012:
    State = 37;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 219){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }
    break;        

    case 37:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("I can already see our victory!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 38:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 39:
    view_object[0] = viewing_obj3;
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Uooo!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 40:
        State = 1013;
        PanOutDialogueBasic();
    break;
    
    case 1013:
    State = 41;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 227){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }
    break;                            

    case 41:
        State += 1;
        room_goto(BattleRoom14);
        instance_destroy();
    break;
}