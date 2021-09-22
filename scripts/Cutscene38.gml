
//Cutscene 12 (Pre Battle 18)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(28,0,string(WordWrap("According to King Galam, evil powers gather ahead of here, at Ground Seal. Master Max is captive in the ancient tower, opposite those rocky mountains over there. ...Ian, I'm worried about Master Max - we must make haste!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",3,1);                         
                }   
        }  

    break;     

    case 4:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(30,0,string(WordWrap("Ah, what a simply magnificent view! First, I'd recommend that you think carefully before you do anything, eh?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("That voice... it's Mishaela! Now we, the Shining Force, have left Galam, it looks like there's a treat instore for us. This is a bit of an exaggerated greeting, but I suppose our reputation preceeds us, eh?... We're now in foreign lands, please try to take a look around this prairie.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1000){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",25,1);                         
                }   
        }  
    view_object[0] = Character;
    break;     

    case 8:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("There are a great number of strange orbs on the prairie. What could their purpose be?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(30,0,string(WordWrap("Ohohoho! You'd do well to realize their powers.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("Ah, our enemy on the prairie is just one of Mishaela's dolls. This is, without a doubt, another trap set by Mishaela, no different than before. Be careful, Ian!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;                       

    case 14:
        State += 1;
        room_goto(BattleRoom19);
        instance_destroy();
    break;
}