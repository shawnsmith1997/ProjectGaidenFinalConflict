//Cutscene 19 (Post Battle 9)
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
        CreateDialogueBasic(24,0,string(WordWrap("We only just failed to catch Eric... and it's because we had to see to you first! And now we're disgraced...! Uuugh, if Lynx hadn't gotten in my way... " + global.Name[1] + ", you'll have to find another way, remember that! Hehehe...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 1000;
        PanOutDialogueBasic();
        break;
        
    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 220){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",8,1.5);         
                }   
        }    
    break;        
    
    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Find another way? What does he mean? Oh well, anyway, as Sylvia said, we should head to the town of Moun now.",200,'#',false)),self.id,true);
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