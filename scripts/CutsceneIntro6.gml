
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 11;
    break;    

    
    case 11:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("Hold on, Lynx, I wouldn't try that. You'll take great damage from my attack!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 12:
        State = 90;
        PanOutDialogueBasic();
    break;
    
                                                                                              
             

    case 90:
        State += 1;
        room_goto(TweenRoom2);
        instance_destroy();
    break;
}