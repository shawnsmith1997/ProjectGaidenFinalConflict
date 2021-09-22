
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 16;
    break;
   

    case 16:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Mead, Paige, Sonette, let's go - follow me!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Right!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 90;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",8,1);                         
                }
                if(ID = 4){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",8,1);                         
                }
                if(ID = 2){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",8,1);                         
                } 
                if(ID = 3){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",8,1);                         
                }                                        
   
        }  
    break;      

    case 90:
        State += 1;
        room_goto(TweenIntro1);
        instance_destroy();
    break;
}