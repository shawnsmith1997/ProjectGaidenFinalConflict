
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 13;
    break;    
    
    case 13:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Ridion, I'm concerned about Adam and the others. Let's hurry up and rejoin them.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 14:
        State = 15;
        PanOutDialogueBasic();
    break;                                                                                            
    
    case 15:
        view_object[0] = viewing_obj2;
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("With this, Mishaela, it's time for you to die. Your anger is useless, this is it.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 16:
        State = 90;
        PanOutDialogueBasic();
    break; 
    
                                                                                         
             

    case 90:
        State += 1;
        room_goto(TweenRoom3);
        instance_destroy();
    break;
}