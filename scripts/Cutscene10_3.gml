//Cutscene 10 (Pre Battle 5)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 22;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj2; 
        break;
    
   case 22:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Wait Mishaela...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 23:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 210){
                Character = self.id;
                direction = 270;
            }                  
        }
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        view_object[0] = viewing_obj; 
        CreateDialogueBasic(30,0,string(WordWrap("Aha!#So, there are yet more of you hiding over there, besides the rat! But, I can't be bothered to wait for you to come out, I'm a busy woman you know...#So, I'll brighten this place up with a Bolt Level 3!#I'm sorry, but for those hiding over there with the rat, this is where it ends!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State = 1000;
        PanOutDialogueBasic();
    break;
             
    case 1000:
    State += 1;
    room_goto(BattleRoom05Cutscene_4);
    break;
    
}