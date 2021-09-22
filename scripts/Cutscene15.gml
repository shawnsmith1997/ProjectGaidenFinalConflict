//Cutscene 15 (Post Battle 7)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
   break;
     
   case 1:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Master Magus! We've been discovered... th... they're here.... uuggghh",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 4;
        PanOutDialogueBasic();
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 208){
                Character = self.id;
                direction = 180;
                instance_change(obj_explosion2, true);
            }
        }
        break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("It's just a matter of time until the enemy finds us... " + global.Name[1] + ", we must make haste!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        room_goto(Town1);
    break;
    
}