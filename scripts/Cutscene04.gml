//Cutscene 4 (Pre Battle 2)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 999;
        instance_create(0,0,CutsceneCamera);
        instance_create(264,72,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject; 
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        alarm[0] = 60;
        break;
    
    case 999:
        State = 1;
        break;
        
        
    case 1:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Adam and the others returned#truimphant to Hassan, with#Ruburan as their prisoner, however...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State += 1;
        ScreenFade(-2,.1,'in',self.id);
        break;
    
    case 3:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("I heard a sound from over there...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
     CameraTargetObject.x = 648;
     CameraTargetObject.y = 312;
     sound_play(AttackBGM);
     sound_stop(TownOST);
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("Elder!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap(global.Name[1] + "!#I'm not important, just go with Cynthia and escape!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;
    

    case 10:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("But Elder!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State = 100;
        PanOutDialogueBasic();
    break;
    
    case 100:
    State =101;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 300){
                Character = self.id;
                direction = 180;
            }
        }
        //view_object[0] = Character; 
        MoveCharacter(Character,'Left',11,2);
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 301){
                Character = self.id;
                direction = 180;
            }
        }
        MoveCharacter(Character,'Left',11,2);
    break;
    
     case 101:
        State = 12;
        //alarm[0] = 60;
    break;
    case 102:
    State+=1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 300){
                Character = self.id;
                direction = 0;
            }
        }
        
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 301){
                Character = self.id;
                direction = 0;
            }
        }
    State = 103;
    break;
    
    case 103:
        State = 12;
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Quickly, catch those guys!#The old man stays with me, you take the other ones!#Lynx, follow me inside.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State = 200;
        CreateDialogueBasic(20,0,string(WordWrap("Yes, Mistress Mishaela!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 200:
    PanOutDialogueBasic();
    State =201;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',8,2);
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 244){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',8,2);
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 243){
                Character = self.id;
                direction = 180;
            }
        }
        MoveCharacter(Character,'Left',3,2);
    break;
    
     case 201:
        State += 1;
        //alarm[0] = 60;
    break;
    case 202:
    State+=1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 243){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',8,2);
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 241){
                Character = self.id;
                direction = 270;
            }
        }
        MoveCharacter(Character,'Up',1,2);
    break;
    
    case 203:
        State = 15;
    break;
    
    case 15:
        State += 1;
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Let's catch them!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State = 300;
    break;
    
    case 300:
    PanOutDialogueBasic();
    State =301;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 240){
                Character = self.id;
                direction = 90;
            }
        }
        view_object[0] = Character; 
        MoveCharacter(Character,'Up',2,2);
       
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 242){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',2,2);
   
    break;
    
     case 301:
        State += 1;
        //alarm[0] = 60;
    break;
    case 302:
    State+=1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 240){
                Character = self.id;
                direction = 180;
            }
        }
        MoveCharacter(Character,'Left',11,2);
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 242){
                Character = self.id;
                direction = 180;
            }
        }
        MoveCharacter(Character,'Left',12,2);
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 300){
                Character = self.id;
                direction = 0;
            }
        }
        MoveCharacter(Character,'Right',1,2);
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 301){
                Character = self.id;
                direction = 0;
            }
        }
        MoveCharacter(Character,'Left',1,2);
    break;
    
    case 303:
        State = 1000;
    break;
    
    case 304:
    State+=1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 240){
                Character = self.id;
                direction = 180;
            }
        }
    //MoveCharacter(Character,'Right',1,2);
    Shudder(Character);
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 242){
                Character = self.id;
                direction = 180;
            }
        }
        //MoveCharacter(Character,'Right',1,2);
        Shudder(Character);
        var Character;
        
        with(GenericCutsceneNPC){
            if(ID = 300){
                Character = self.id;
                direction = 0;
            }
        }

        MoveCharacter(Character,'Right',1,3);

    break;
    
    case 305:
        State += 1;
    break;
    
     case 1000:
        State += 1;
        CreateDialogueBasic(1,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 1001:
        PanOutDialogueBasic();
        State += 1;
    break;
    
    case 1002:
        State = 304;
    break;
    
    case 306:
    State+=1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 240){
                Character = self.id;
                direction = 180;
                instance_change(obj_explosion, true);
            }
        }
        
        with(GenericCutsceneNPC){
            if(ID = 300){
                Character = self.id;
                direction = 0;
            }
        }
        MoveCharacter(Character,'Left',1,3);

    break;
    
    case 307:
        State += 1;
    break;
    
    case 308:
    State += 1;
            var Character;
        with(GenericCutsceneNPC){
            if(ID = 300){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',4,2);
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 301){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',7,2); 
        view_object[0] = Character
    break;
    
    case 309:
    State += 1;
            var Character;
        with(GenericCutsceneNPC){
            if(ID = 300){
                Character = self.id;
                direction = 270;
            }
        }
        Shudder(Character);
    break;
    
    case 310:
    State = 18;
    break;

    case 18:
    
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("Cynthia, are you okay?#Good... we've overtaken them.#What kind of person would do something like this?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("I... I don't understand...#They came here without warning... #The Elder didn't think anything like this could possibly happen. But, suddenly they stormed into the village...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("How dare they disrupt the peace of this village?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("Adam, " + global.Name[1] + "and I will help you, although first we must rescue the Elder.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("I understand.#Right, let's begin the rescue!#" + global.Name[1] + ", please fight alongside us.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    
    case 28:
        State += 1;
        room_goto(BattleRoom02);
        instance_destroy();
    break;
}