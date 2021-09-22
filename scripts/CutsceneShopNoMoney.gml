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
        CreateDialogueBasic(0,0,string(WordWrap("Oh shucks! You do not have enough money!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 5;
        PanOutDialogueBasic();
        break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("What do you want to buy?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 5:
        State += 1;
        if (global.currentArea >= 55){
        //room_goto(Shop_buying5);
        room_goto(Shop_buying4);
        }    
        else if (global.currentArea >= 41 and global.currentArea < 55){
        room_goto(Shop_buying4);
        }
        else if (global.currentArea >= 12 and global.currentArea < 41){
        room_goto(Shop_buying3);
        }
        else if (global.currentArea >= 6 and global.currentArea <= 11){
        room_goto(Shop_buying2);
        }
        else{
        room_goto(Shop_buying);
        }
    break; 
}
