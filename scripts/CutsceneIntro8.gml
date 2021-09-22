
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 17;
    break;       
    
    case 17:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Oh, ho ho ho! You're wrong, I'm not hurt. Eiku, destroy those hindering pests!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 18:
        State = 1006;
        PanOutDialogueBasic();
    break; 

    case 1006:
    State = 19;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1);                            
                }
   
        }  
    break;    
        
    case 19:
        State += 1;
        CreateDialogueBasic(23,0,string(WordWrap("Don't even think about giving Mishaela any trouble. Take this... Blaze level 3! Hah hah hah ha! You'd do well to realise just how much power I have.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 20:
        State = 90;
        PanOutDialogueBasic();
    break; 
                                                                                                           
    case 90:
        State += 1;
        room_goto(TweenRoom4);
        instance_destroy();
    break;
}