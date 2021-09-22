
//Cutscene 12 (Post Battle 15)
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
        CreateDialogueBasic(23,0,string(WordWrap("These fools...? Those guys can't have defeated me, the Great Eiku! ",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(23,0,string(WordWrap("They really must be the legendary Shining Force...  This really can't be happening. But, it's already too late for Max... M... Mistress Mishaela... gufuu...",200,'#',false)),self.id,true);
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
                    direction = 270;  
                    instance_change(obj_explosion2,true);        
                }   
        }
        Cutscene31();    
    break; 

    case 6:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Eiku... He was a fearsome enemy. But, Eiku started to say something about Master Max... What was he trying to tell us? This doesn't bode well...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Oohh... Is everybody safe?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 2000;
        PanOutDialogueBasic();
    break;
    
    case 2000:
    State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 6){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Left",1,1);                         
                }   
        }

    break;       

    
    case 1003:
    State = 12;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 100){
                    Character = self.id;
                    direction = 270;  
                    SpriteID = 206;
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }

    break;     

    case 10:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("That voice ... could it be?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 14;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 100){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",2,1);                         
                }   
        }

    break;      

    case 12:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("...Elder! Is it really you?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State = 1004;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("I was worried this would never end... ...Cynthia.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("It's great that we've been re-united. ...moreover it's good that our Elder is safe.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("Is that you, Adam? I've been confined in this Fortress. I saw a young man defeat the guard soldier, helping me escape.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("A young man... who could it be... The Devil Army took us by surprise when we entered, but we fought through them.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("Companions, the shrine! There's no time to lose, we must go! If we don't hurry, we won't have survived the Devil Army - the support pillars of the Fortress are breaking away!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("The Fortress is collapsing... I think we have a problem!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Indeed. ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap( global.Name[1] + ", let's make haste!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        room_goto(Town1);
        instance_destroy();
    break;
}