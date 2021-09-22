
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
        CreateDialogueBasic(30,0,string(WordWrap("So, you're not leaving yet? I'll cast Spark level 3!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 42:
        State = 90;
        PanOutDialogueBasic();
    break; 
                                                                                                        

    case 90:
        State += 1;
        room_goto(TweenRoom5);
        instance_destroy();
    break;
}