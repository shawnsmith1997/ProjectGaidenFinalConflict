
//Cutscene 12 (Pre Battle 17)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj3;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(0,0,string(WordWrap("The Shining Force tried to maintain high spirits while in the home town of the rescued dwarves. The Devil's revival is in nearby Ground Seal, which the Force are heading towards...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 4:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        CreateDialogueBasic(28,0,string(WordWrap("The only thing between this prairie and Grans Tower is the govermental city of Galam.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",2,1);                         
                }   
        }  
    break;     

    case 6:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(20,0,string(WordWrap(global.Name[1] + "! You escaped Magus and Eiku, and finally, you're here. I must say I have a great respect for the Shining Force, but as I have just arrived, it's customary for me to make the first advance.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        view_object[0] = viewing_obj3;
        CreateDialogueBasic(28,0,string(WordWrap("You are...!?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 1001;
        PanOutDialogueBasic();
    break;

    case 1001:
    State = 10;
    view_object[0] = viewing_obj2;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 210){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1);                         
                }   
        }  
    break;  

    case 10:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("My name is Lynx, and I'm the hard-working Commander of the Devil Army. I hold no grudge against you, it is my job to fight well and it's very important to me. Please, show me your strength.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;                         

    case 12:
        State += 1;
        room_goto(BattleRoom17);
        instance_destroy();
    break;
}