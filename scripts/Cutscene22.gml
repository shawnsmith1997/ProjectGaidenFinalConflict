//Cutscene 22 (Pre Battle 11)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State += 1;
        sound_loop(EvilIntention);
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
   break;
     
   case 1:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("This is disasterous Magus! Do you think your failure can be excused?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 4;
        PanOutDialogueBasic();
        break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("B....but if Lynx had followed my plan, it would have worked...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 8:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("That's just an excuse, Magus, you poor excuse for a man!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 10:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("...next time I'll send my strongest unit to hunt them down and attack.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;  

    case 12:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("If you fail to finish them next time, the consequences will be dire.",200,'#',false)),self.id,true);
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

                if(ID = 210){
                    Character = self.id;
                    direction = 180;  
                    instance_change(misc_dis,true);        
                }   
        }
        Cutscene22();    
    break;     

    case 14:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("This is getting serious. If you want, I'll help you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;        

    case 16:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("What, now I've become your cause?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;     

    case 18:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Yes, and since it is Mistress Mishaela's command, we will have to use unfair means to trap our enemy.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("What about your chilvalry?! I won't ask you again. Lynx, get out of my sight immediately!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 22:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("If that's what you want....? ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Magus, I wish you well in your war!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 26;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 180;  
                    instance_change(misc_dis,true);        
                }   
        }
        Cutscene22();    
    break;     

    case 26:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Did he leave? Oh well, I should go and do as I told Mishaela I would.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 30;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("I, the great Magus, will be the one to show the Shining Force the true strength of the Devil Army. I will lead my troops to victory, and we will kill the Shining Force! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(12,0,string(WordWrap("This is the Northernmost part of the Parmecian continent. Grans is already within our reach!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 34;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 12){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",2,1.5);         
                }   
        }
    break;    

    case 34:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("This must be the place Volcanon told us about.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 35:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 36:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(24,0,string(WordWrap("I've been waiting for you... ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 37:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 38:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(12,0,string(WordWrap("It's you, Magus!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 39:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 40:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(24,0,string(WordWrap("So, you've joined them, have you, Eric? If so, all the more convenient for me! I must praise you for making it this far... ...but you've walked into my trap, and now I shall send you to your graves.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 41:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 42:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(12,0,string(WordWrap(global.Name[1] + ", I wouldn't put it past that guy to use foul play. Please, be careful of his filthy trap!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 43:
        State += 1;
        PanOutDialogueBasic();
    break;          

    case 44:
        State += 1;
        room_goto(BattleRoom11);
    break;

}
