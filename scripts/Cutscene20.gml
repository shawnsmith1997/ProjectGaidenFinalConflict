//Cutscene 20 (Pre Battle 10)
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
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("... these are military operations, Lynx, just like you wanted.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 1000;
        PanOutDialogueBasic();
        break;
        
    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,1.5);         
                }   
        }
    break;         
    
    case 4:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("What are you on about? I wanted a fairly matched battle. If you're going to have such unfair tactics, I can't go along with those. You need to rethink your plans, Magus.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
       
     case 5:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 220){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",1,1.5);         
                }   
        }
    break;     
    
    case 6:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Hmmm.... unfair, you say? If you don't like the way I'm doing this, then go somewhere else.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 8:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Are you serious, Magus?!... Well, if you really mean it, it's not my turn anyway...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 0;
                    instance_change(misc_dis, true);       
                }   
        }
        Cutscene20();
    break;      

    case 10:
        view_object[0] = viewing_obj3;
        sound_stop(EvilIntention);
        sound_loop(SF1ShadeAbbey);
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Well, well, it's the Shining Force. I've heard rumours about you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State = 1003;
        PanOutDialogueBasic();
    break;  
    
    case 1003:
    State = 12;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 202){
                    Character = self.id;
                    direction = 270;
                    MoveCharacter(Character,"Down",1,1.5);         
                }   
        }
    break;    

    case 12:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("You're early, we were just about to start preparing your welcome!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 14;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 201){
                    Character = self.id;
                    direction = 270;
                    MoveCharacter(Character,"Down",1,1.5);         
                }   
        }
    break;    

    case 14:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Isn't the Devil Army here?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State = 1005;
        PanOutDialogueBasic();
    break;
    
    case 1005:
    State = 16;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 203){
                    Character = self.id;
                    direction = 270;
                    MoveCharacter(Character,"Down",1,1.5);         
                }   
        }
    break;            

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("No, the Devil Army already withdrew... but at least you're here now.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State = 1020;
        PanOutDialogueBasic();
    break; 
    
    case 1020:
    State = 18;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 220){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1.5);         
                }   
        }
    break;         

    case 18:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("They're bound to attack somewhere, don't you think?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State = 1006;
        PanOutDialogueBasic();
    break;
    
    case 1006:
    State = 20;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 90;
                    MoveCharacter(Character,"Up",1,1.5);         
                }   
        }
    break;    

    case 20:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("...Please, won't you come into our town?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State = 1007;
        PanOutDialogueBasic();
    break;
    
    case 1007:
    State = 22;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1){
                    Character = self.id;
                    direction = 90;
                    MoveCharacter(Character,"Up",1,1.5);         
                }   
        }
    //instance_create(600,408,gate_cutscene);   
    break;      
    
    case 22:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(12,0,string(WordWrap("This is a trap! Don't go into the town! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State = 1008;
        PanOutDialogueBasic();
        sound_play(CriticalSound);
        instance_create(616,416,gate_cutscene);   
    break;
    
    case 1008:
    State = 24;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 12){
                    Character = self.id;
                    direction = 90;
                    MoveCharacter(Character,"Up",4,2.4);         
                }   
        }
    break;    

    case 24:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(24,0,string(WordWrap("Hehehe, the fools actually came in!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        view_object[0] = viewing_obj3;
        CreateDialogueBasic(28,0,string(WordWrap("It's you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 30;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(24,0,string(WordWrap("Yes, it's me: Magus, commander of the Devil Army! Take a look around," + global.Name[1] + "!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("You've become very bold, especially for one who's about to die. This is a little awkward... in what way should I finish him off?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 34:
      State += 1;
      room_goto(BattleRoom10);
    break;
}
