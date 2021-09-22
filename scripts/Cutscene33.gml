
//Cutscene 12 (Post Battle 16)
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
        State = 3;
        CreateDialogueBasic(30,0,string(WordWrap("Oouughh... Misha... ugghh",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 210){
                    Character = self.id;
                    direction = 270;  
                    instance_change(obj_explosion2,true);        
                }   
        }
        Cutscene33();    

    break;      

    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("At last we've defeated Mishaela! Now all we have to do is find Master Max!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("It looks like the Devil Army rounded up the Dwarves from their isolated village, against their will, in order to build these things.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Thank you so much, everyone! It's such a relief that we can now return home by ourselves.@",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 228){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",4,1);                         
                }   
        }  
    break;       

    case 10:
    State +=1;
    room_goto(BattleRoom16CutscenePost2);
    break;   
    
}