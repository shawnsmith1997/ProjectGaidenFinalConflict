//Cutscene 1 
//can call 'with CutsceneControler' if needbe

switch (State){
    case 0:
        State += 2;
        PlayerTownObject.CutsceneMode = true;
        PlayerTownObject.AllowInteraction = false;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        alarm[0] = 60;
        break;
    
    case 2:
        State += 1;
        CreateDialogueBasic(0,0,WordWrap("The Shining Force fought a long battle at the ancient temple on the continent of Parmecia.",200,'#',false), self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
        
    case 3:
        State += 1;
        PanOutDialogueBasic();
        break;
        
    case 4:
        State += 1;
        alarm[0] = 60;
        break;
    
    case 5:
        State += 1;
        CreateDialogueBasic(0,0,WordWrap("Adam was injured, and so they returned to the port town of Hassan to heal him...",200,'#',false), self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
        
    case 6:
        State += 1;
        PanOutDialogueBasic();
        break;
        
    case 7:
        State += 1;
        alarm[0] = 60;
        break;
        
    case 8:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(720,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject;
        //sound_loop(TownOST);
        ScreenFade(-2,.1,'in',self.id);
        break;
    case 9:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        Face_Direction(PlayerTownObject,"Right");
        MoveCharacter(PlayerTownObject,"Right",1,2.4);
        
        break;
    case 10:
        //global.StoryState +=1;//should be 1 at this point;
        State += 1;
        Face_Direction(PlayerTownObject,"Down");
        MoveCharacter(PlayerTownObject,"Down",7,2.4);
        //instance_destroy();
        break;

    case 11:
        State +=1;
        Face_Direction(PlayerTownObject,"Up");
        CreateDialogueBasic(29,0,string(WordWrap("How are you feeling, Adam?#Is the wound any better, I wonder?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        //instance_destroy();
        break;
    case 12:
        State += 1;
        PanOutDialogueBasic();
    break;
     case 13:
        State+=1;
        CreateDialogueBasic(28,0,string(WordWrap("It's hopeless. I don't think I'll be able to fight anymore. The others will be able to fight though, they're strong enough. We should set out to find Max as soon as possible.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 14:
        State += 1;
        PanOutDialogueBasic();
    break;  
    case 15:
        State+=1;
        CreateDialogueBasic(29,0,string(WordWrap("If you think it's necessary Adam, set up a pursuing party...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        //instance_destroy();
        break;
    case 16:
        State += 1;
        PanOutDialogueBasic();
    break;
     case 17:
        State+=1;
        CreateDialogueBasic(28,0,string(WordWrap("Right. If we don't save Max, the world may be destroyed! For that reason, we should leave here and try to pick up his trail. Don't worry though, we'll be back.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        //instance_destroy();
        break;
    case 18:
        State = 100;
        PanOutDialogueBasic();
    break;
    
    case 100:
    State += 1;
    PanOutDialogueBasic();
     var Character;
        with(GenericCutsceneNPC){
            if(ID = 202){
                Character = self.id;
                direction = 90;
            }
        }
        view_object[0] = Character;
        MoveCharacter(Character,'Up',5,2);//walk him up 5 tiles
        

        var Character;
        with(GenericCutsceneNPC){
            if(ID = 203){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',5,2);//walk him up 5 tiles
 

        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 204){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',5,2);//walk him up 5 tiles
    break
    
    case 101:
    State += 1;
     var Character;
        with(GenericCutsceneNPC){
            if(ID = 202){
                Character = self.id;
                direction = 0;
            }
        }
        MoveCharacter(Character,'Right',2,2);

        var Character;
        with(GenericCutsceneNPC){
            if(ID = 203){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',1,2);
 

        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 204){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',1,2);
    break
    
    case 102:
    State += 1;
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 202){
                Character = self.id;
                direction = 90;
            }
        }
    
    
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 203){
                Character = self.id;
                direction = 0;
            }
        }
        MoveCharacter(Character,'Right',1,2);
 

        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 204){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',1,2);
    break
    
    case 103:
    State +=1;
    
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 203){
                Character = self.id;
                direction = 90;
            }
        }
    break
    
    case 104:
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 201){
                Character = self.id;
                direction = 270;
            }
        }
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 270;
            }
        }    
        
    State = 19;
    break
    
    
    case 19:
        State+=1;
        //view_object[0] = CameraTargetObject;
        CreateDialogueBasic(2,0,string(WordWrap("We'd all like to see this plan succeed, wouldn't we Adam? I'm concerned that we're leaving Hassan without any supervision. What if we are defeated, and never return?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue2Sound;
        //instance_destroy();
        break;
    case 20:
        State += 1;
        PanOutDialogueBasic();
    break;
     case 21:
        State+=1;
        CreateDialogueBasic(28,0,string(WordWrap(" There's no need to worry, Mead. I'm happy to go with you as an advisor. If we don't do something, we'll never put an end to this.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 22:
        State += 1;
        PanOutDialogueBasic();
    break;
    case 23:
        State+=1;
        CreateDialogueBasic(4,0,string(WordWrap("Nonetheless, we'll still worry a little. Adam, Mead - I think our search will be successful, don't you?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue1Sound;
        //instance_destroy();
        break;
    case 24:
        State += 1;
        PanOutDialogueBasic();
    break;                   
    case 25:
        State+=1;
        CreateDialogueBasic(3,0,string(WordWrap("Well, Paige & Adam, I can't imagine how we're going to manage this! I mean, Hawel's only an apprentice mage, he still has a lifetime of study ahead of him. How useful would it be to have him at hand?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue4Sound;
        //instance_destroy();
        break;
    case 26:
       State = 201;
        PanOutDialogueBasic();
    break; 
    
     case 201:
    State = 27;
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 202){
                Character = self.id;
                direction = 180;
            }
        }
    
        MoveCharacter(Character,'Right',1,2);
        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 203){
                Character = self.id;
                direction = 180;
            }
        }
        MoveCharacter(Character,'Right',1,2);
 

        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 204){
                Character = self.id;
                direction = 180;
            }
        }
        MoveCharacter(Character,'Right',1,2);
        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 205){
                Character = self.id;
                direction = 90;
            }
        }
        
        MoveCharacter(Character,'Up',9,2);
        
       
    break;
    
    
     
    case 27:
    
      State  = 430;
        break;
        
    case 430:
    State = 28;   
    break;
    
    case 28:
        State = 431;
        CreateDialogueBasic(5,0,string(WordWrap("You're out of line! What do you think you're saying? Sonette, are you telling me that I'm just some useless academic? Yet despite that, I almost always have to show you what to do and help you out! ",200,'#',false)),self.id,true);
    break;
    
    case 431:
    State += 1;
    DialogueControler.Voice = Dialogue5Sound;
        
    break;
    
    case 432:
        State = 29;
        PanOutDialogueBasic();
    break;
    
    case 29:
        State+=1;
        CreateDialogueBasic(3,0,string(WordWrap("Just kidding, just kidding! I've often had to depend on you and your experience, Hawel.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue4Sound;
        //instance_destroy();
        break;
    case 30:
            State += 1;
        PanOutDialogueBasic();
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 202){
                Character = self.id;
                direction = 90;
            }
        }
    
        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 203){
                Character = self.id;
                direction = 90;
            }
        }
 

        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 204){
                Character = self.id;
                direction = 90;
            }
        }
    break;
    case 31:
        State+=1;
        CreateDialogueBasic(28,0,string(WordWrap("Okay everybody, let's do it, shall we?! Well, let's head across to the ancient temple to see what devils we must face!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 32:
        State += 1;
        PanOutDialogueBasic();
    break;
    case 33:
        State+=1;
        CreateDialogueBasic(3,0,string(WordWrap("Just a minute! Shouldn't Knuckles be going with us now?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue4Sound;
        //instance_destroy();
        break;
    case 34:
        State += 1;
        PanOutDialogueBasic();
    break;
    case 35:
        State+=1;
        CreateDialogueBasic(4,0,string(WordWrap("That guy must have slept in again. He's let Max down this time, he doesn't deserve to come with us. He's always late, and we always have to wait for him. We'll be waiting until nightfall for him to wake up and get here!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue1Sound;
        //instance_destroy();
        break;
    case 36:
        State += 1;
        PanOutDialogueBasic();
    break;
    case 37:
        State+=1;
        CreateDialogueBasic(5,0,string(WordWrap("That's right. He's got no excuse. When he comes out, he can join us. Let's go now.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        //instance_destroy();
        break;
    case 38:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 39:
        State+=1;
        CreateDialogueBasic(29,0,string(WordWrap("Oh dear! Knuckles, what shall we do with you! If he shows up, I'll tell him you've already left.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        //instance_destroy();
        break;
    case 40:
        State += 1;
        PanOutDialogueBasic();
    break;
    case 41:
        State+=1;
        CreateDialogueBasic(28,0,string(WordWrap("Thank you. We couldn't ask for more. Well then, Elder, myself and the others should leave for the Ancient temple now. We'll return soon.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 42:
        State += 1;
        PanOutDialogueBasic();
    break;
    case 43:
        State+=1;
        CreateDialogueBasic(29,0,string(WordWrap("I'll be here waiting for you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        //instance_destroy();
        break;
    case 44:
        State = 500;
        PanOutDialogueBasic();
    break;
    
    case 500:
    State +=1;
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 206){
                Character = self.id;
                direction = 0;
            }
        }
        view_object[0] = Character;
        
        MoveCharacter(Character,'Right',8,2);
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 207){
                Character = self.id;
                direction = 0;
            }
        }
        
        MoveCharacter(Character,'Right',8,2);

    
    break;
    
    case 501:
    State = 45;
    
    break;
    
    

    
    
    case 45:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("With respect, Elder, please could you let " + global.Name[1] + " come with us?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 46:
        State += 1;
        PanOutDialogueBasic();
    break;
    case 47:
        State+=1;
        CreateDialogueBasic(29,0,string(WordWrap("Don't be so tiresome, Cynthia. He's too busy training right now. You and the others, go on ahead. Maybe you'll meet up with him back here in Hassan later on. To tell you the truth, Adam, there's something I want to tell you... # ...because of the situation, I'll tell you when you return from the ancient temple. ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        //instance_destroy();
        break;
    case 48:
        State = 504;
        PanOutDialogueBasic();
    break;
    
    case 504:
    State +=1;
    view_object[0] = 0;
    
    
     var Character;
        with(GenericCutsceneNPC){
            if(ID = 207){
                Character = self.id;
                direction = 270;
            }
        }
        
        MoveCharacter(Character,'Down',9,2);
    
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 206){
                Character = self.id;
                direction = 270;
            }
        }
        
        MoveCharacter(Character,'Down',9,2);
    
    break;
    
    case 505:
    CreateScreenFade(c_black,1,1,0,'in',self.id);
    ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
    State =49;
    
    break;
    
    case 49:
        State+=1;
        CreateDialogueBasic(3,0,string(WordWrap("Well then....#Let's go to the ancient temple!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue1Sound;
        //instance_destroy();
        break;
    case 50:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 51:
    ScreenFade(-2,.1,'in',self.id);
        ScreenFade(-2,.1,'in',self.id);
        State +=1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 302){
                Character = self.id;
                direction = 0;
            }
        }
        view_object[0] = Character;
        break;  
    case 52:
        State += 1;
        CreateDialogueBasic(7,0,string(WordWrap("Oi! Wait up!#I'm all set to come along and do my best!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 53:
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 301){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',4,2);
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 751:
    State = 54;
    break;
    
     
    case 54:
        State += 1;
        CreateDialogueBasic(3,0,string(WordWrap("Knuckles, it's you!#You arrived just in time to set out with us. We're setting off for the ancient temple.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 55:
        State += 1;
        PanOutDialogueBasic();
    break; 
    case 56:
        State += 1;
        CreateDialogueBasic(7,0,string(WordWrap("Ha ha!#Sorry, sorry!#I slept in late... then rushed to get ready!#I came because I knew how important this is.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 57:
        State += 1;
        PanOutDialogueBasic();
    break; 
    case 58:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Come along then, it's time to depart.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 59:
        State += 1;
        PanOutDialogueBasic();
    break; 
    case 60:
        State += 1;
        CreateDialogueBasic(7,0,string(WordWrap("Well everyone...#let's go!!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue3Sound;
        //instance_destroy();
        break;
    case 61:
        State += 1;
        PanOutDialogueBasic();
    break; 
      
          


    case 62:
        CreateScreenFade(c_black,1,1,0,'in',self.id);
        State +=1;
        global.StoryState += 1;
        global.ForceMembers = 7; //how many in force
        global.BattlePartyNumber = 7; //how many in battle party
        global.In_Force[2] = true;//Did they join the team yet?
        global.In_Force[3] = true;//Did they join the team yet?
        global.In_Force[4] = true;//Did they join the team yet?
        global.In_Force[5] = true;//Did they join the team yet?
        global.In_Force[7] = true;//Did they join the team yet?
        global.In_Battle_Party[2] = true;//Are they part of your active battle party?
        global.In_Battle_Party[3] = true;//Are they part of your active battle party?
        global.In_Battle_Party[4] = true;//Are they part of your active battle party?
        global.In_Battle_Party[5] = true;//Are they part of your active battle party?
        global.In_Battle_Party[7] = true;//Are they part of your active battle party?
        PlayerTownObject.CutsceneMode = false;
        //PlayerTownObject.AllowInteraction = true;
        instance_destroy();
        room_goto(BattleRoom01Cutscene);
        break;    
    }
