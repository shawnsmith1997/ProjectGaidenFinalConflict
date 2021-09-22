//Cutscene 10 (Pre Battle 5)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1013;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        break;
    
    case 1013:
    State +=1;
    CreateDialogueBasic(30,0,string(WordWrap("I'm a step ahead of you now, and it's time for me to face Volcanon... and defeat him!#Now, Lynx... ",200,'#',false)),self.id,true);
    DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 1014:
    State =26;
    PanOutDialogueBasic();
    break;                              
    
    // Spark 3 kills the 3 men

    case 26:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("As planned, you should go to Max.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 29:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Right!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;   
    
    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("I'll be right behind you...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 33:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 34:
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 211){
                Character = self.id;
                direction = 270;
                instance_change(disappear_explosion, true);
            }                  
        }
    break;
}