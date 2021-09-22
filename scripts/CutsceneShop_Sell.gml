//Cutscene 13 (Post Battle 6)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(0,0,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject;
        break;
      
     
   case 1:
        State += 1 ;
        CreateDialogueBasic(0,0,string(WordWrap("What's up, boy! We guarantee all items to be in good condition!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 4;
        PanOutDialogueBasic();
        break;
    
    case 4:
        State = 6;
        CreateDialogueBasic(0,0,string(WordWrap("What do you want to sell?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 6:
        State = 5;
        PanOutDialogueBasic();
        break;  
         
    case 5:
        State += 1;
        room_goto(Shop_selling);
    break; 
}
