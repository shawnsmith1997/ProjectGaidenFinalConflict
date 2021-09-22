
//Cutscene 12 (Post Battle 21)
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
        CreateDialogueBasic(28,0,string(WordWrap("L...look over there everyone! Darksol seems to have completed his revival. Prepare yourselves to defeat him!",200,'#',false)),self.id,true);
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
        room_goto(BattleRoom22);
        instance_destroy();
    break;
}