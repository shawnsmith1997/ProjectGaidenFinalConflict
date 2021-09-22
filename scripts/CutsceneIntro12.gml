
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 41;
    break;               
    
    case 41:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Your turn, Magus!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 42:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 43:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("A chase! Blaze Level 2!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 44:
        State = 90;
        PanOutDialogueBasic();
    break;   
                                                                                             
             

    case 90:
        State += 1;
        room_goto(TweenRoom6);
        instance_destroy();
    break;
}