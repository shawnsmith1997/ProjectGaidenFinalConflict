
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State = 14;
    break;

case 14:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Ridion, we can't let Mishaela escape! Adam, take Mead and the others and go after Mishaela!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State = 1006;
        PanOutDialogueBasic();
    break; 
    
    case 1006:
    State = 90;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",2,0.75);                         
                }
                if(ID = 18){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",8,2.5);                         
                }
 
   
        }  
        //view_object[0] = Character;
    break;     

    case 90:
        State += 1;
        room_goto(CutsceneIntroRoom_3);
        instance_destroy();
    break;
}