
//Cutscene 12 (Pre Battle 20)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        State = 33;
        break;

    case 33:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("A.... Adam... I knew I could depend on the new Shining Force!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 34:
        State += 1;
        PanOutDialogueBasic();
    break;                      

    case 35:
        State += 1;
        room_goto(BattleRoom20CutscenePost_2);
        instance_destroy();
    break;
}