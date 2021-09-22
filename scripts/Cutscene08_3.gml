//Cutscene 8 (Pre Battle 4)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 1000){
                Character = self.id;
                direction = 90;
                MoveCharacter(Character,"Down",30,1.5);
            }                     
        } 
        
        view_object[0] = Character; 

        break;
   case 1:
   State = 6;
   break;
       case 6:
        State += 1;
        view_object[0] = viewing_obj3; 
        CreateDialogueBasic(6,0,string(WordWrap("The rumours at Ribble Camp must be true - that's the Kraken!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        view_object[0] = viewing_obj; 
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("It looks like we'll have some difficulty before we can cross the bridge and progress.#" + global.Name[1] + "... here you must show your strength as a Hero - defeat it so that we can get across!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 10:
        State += 1;
        room_goto(BattleRoom04);
        instance_destroy();
    break;
}