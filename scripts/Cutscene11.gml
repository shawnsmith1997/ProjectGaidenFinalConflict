//Cutscene 11 (Post Battle 5)
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
        CreateDialogueBasic(8,0,string(WordWrap("Damn!#If I hadn't waited, her henchmen wouldn't have caused this trouble...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    
    case 3:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    
    case 1000:
    State =4;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 214){
                Character = self.id;
                direction = 90;                
            }                  
        }
    MoveCharacter(Character,"Up",2,1.5);
    
    break;

    
    case 4:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Chief Ruburan, I'm sorry...#We were afraid... so afraid. We couldn't fight!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State = 900;
        PanOutDialogueBasic();
    break;
    
    case 900:
    State = 6;    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 207){
                Character = self.id;
                direction = 90;                
            }                  
        }
    MoveCharacter(Character,"Right",1,1.5);
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("That's okay, Nosshu - even I'm afraid of that evil woman.#However... I still hope we're able to catch up with her.#She's got the power to take over the world, and she's ready to do so, by any means necessary. People like her will just do whatever they like.#For this reason, " + global.Name[1] + ", I'd like to come along with you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State = 2000;
        PanOutDialogueBasic();
    break;
    
    case 2000:
    State = 8;
            var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 270;                
            }                  
        }
    MoveCharacter(Character,"Down",2,1.5);
    
    break;
    

    case 8:
        State += 1;
        sound_play(JoinBGM2);
        CreateDialogueBasic(0,0,string(WordWrap("Ruburan the Thief joins the Force.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State = 3000;
        PanOutDialogueBasic();
    break;
    
    case 3000:
    State = 10;
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 180;                
            }  
            if(ID = 214){
            Character = self.id;
            direction = 270;   
            MoveCharacter(Character,"Down",1,1.5);
            }                
        }
    
    break;
    
    case 10:
        sound_loop(SoldiersRequiem);
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Chief, I'd like to come along with you too!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("No, Nosshu - you need to stay here and protect our hideout.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Right, chief!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Well, let's go!#Stay here, Nosshu, and...#... await my glorious return! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State = 4000;
        PanOutDialogueBasic();
    break;
    
    case 4000:
    State += 1;
    with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",3,1.5);                
            }  
            if(ID = 1){
            Character = self.id;
            direction = 270;   
            MoveCharacter(Character,"Down",3,1.5);
            }
            
            if(ID = 207){
            Character = self.id;
            direction = 270;   
            MoveCharacter(Character,"Down",3,1.5);
            }                 
        }
    break;
    
    case 4001:
    State = 18;
    with(GenericCutsceneNPC){
            if(ID = 8){
                Character = self.id;
                direction = 180;
                MoveCharacter(Character,"Left",15,1.5);                
            }  
            if(ID = 1){
            Character = self.id;
            direction = 180;   
            MoveCharacter(Character,"Left",15,1.5);
            }
            
            if(ID = 207){
            Character = self.id;
            direction = 180;   
            MoveCharacter(Character,"Left",15,1.5);
            }                 
        }
    break;    

    case 18:
        room_goto(BattleRoom05CutscenePost_2);
    break;
}