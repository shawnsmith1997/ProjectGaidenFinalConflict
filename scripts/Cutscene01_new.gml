//Cutscene 1 (Jasons room)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State += 2;
        PlayerTownObject.CutsceneMode = true;
        PlayerTownObject.AllowInteraction = false;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        alarm[0] = 60;
        break;
    
    case 2:
        State += 1;
        CreateDialogueBasic(0,0,(global.Name[1])+"...",self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
        
    case 3:
        State += 1;
        PanOutDialogueBasic();
        break;
        
    case 4:
        State += 1;
        alarm[0] = 60;
        break;
    
    case 5:
        State += 1;
        CreateDialogueBasic(0,0,(global.Name[1])+" wake up!",self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
        
    case 6:
        State += 1;
        PanOutDialogueBasic();
        break;
        
    case 7:
        State += 1;
        alarm[0] = 60;
        break;
        
    case 8:
        State += 1;
        CreateDialogueBasic(1,0,"Ugh, Morning already?",self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
        
    case 9:
        State += 1;
        PanOutDialogueBasic();
        break;
    case 10:
        State += 1;
        sound_loop(EmbarkBGM);
        ScreenFade(-2,.1,'in',self.id);
        break;
    case 11:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        Face_Direction(PlayerTownObject,"Right");
        MoveCharacter(PlayerTownObject,"Right",1,2.4);
        break;
    case 12:
        global.StoryState +=1;//should be 1 at this point;
        State += 1;
        PlayerTownObject.CutsceneMode = false;
        PlayerTownObject.AllowInteraction = true;
        instance_destroy();
        break;
}