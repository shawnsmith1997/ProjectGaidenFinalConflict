
//Cutscene 12 (Post Battle 19)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        view_object[0] = viewing_obj;
        CutsceneCamera.CameraPathfinding = true;
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(28,0,string(WordWrap("It can't be... Because of those Orbs, our magic powers were continually restored! It's no wonder everyone in the Devil Army used magic. That was the reason! Well, it's time we went to find Master Max and stop the Devil's revival...",200,'#',false)),self.id,true);
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
        room_goto(Town1);
        instance_destroy();
    break;
}