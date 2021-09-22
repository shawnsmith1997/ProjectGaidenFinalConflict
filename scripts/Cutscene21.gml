//Cutscene 21 (Post Battle 10)
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
        CreateDialogueBasic(24,0,string(WordWrap("Impossible! They defeated my troops again! Oh well, at least Lynx wasn't here to see. Remember this, you barely escaped with your lives!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 1000;
        PanOutDialogueBasic();
        break;
    
    case 4:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(28,0,string(WordWrap("I should have known this was a trap...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 220){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",10,1.5);         
                }   
        }
    break;     
    
    case 6:
        State += 1;
        view_object[0] = viewing_obj3;
        CreateDialogueBasic(12,0,string(WordWrap("Hey, over here! Hurry up and open this gate!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
        State += 1;
        //sound_play(SpellCastSound);
        CreateScreenFade(c_black,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 1002:
        State = 32;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;   

    case 32:
        State += 1;
        room_goto(BattleRoom10CutscenePost2);
    break;
}