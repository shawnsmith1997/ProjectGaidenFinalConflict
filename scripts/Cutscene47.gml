
//Cutscene 12 (Post Battle 22)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(27,0,string(WordWrap("It can't be! Mere mortals can't have defeated me like this! My revival should have been completed... How? Something has been holding back my powers, but what...?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 4:
        State += 1;
        CreateDialogueBasic(25,0,string(WordWrap("Darksol, the completion of your revival was hindered by the one you personally sealed away... the Devil King, Zeon!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Ah, I can hear the voice of Goddess Mitula...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(27,0,string(WordWrap("Zeon, you bastard! How dare you seal my powers deep below?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(25,0,string(WordWrap("Now, Ian! Throw the necklace at Darksol!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        instance_create(192,120,NecklaceofLight);
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(27,0,string(WordWrap("Ugyaa.....!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State = 2000;
        PanOutDialogueBasic();
    break;

    case 2000:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_yellow,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 2001:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
    
    case 2002:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;

    case 2003:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
            
    case 2004:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 2005:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        alarm[0] = 50;
    break;
    
    case 2006:
        State += 1;
        sound_play(SpellCastSound);
        CreateScreenFade(c_white,255,100,0,'none',self.id);
        alarm[0] = 50;
    break;
    
    case 2007:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
        room_goto(BattleRoom22CutscenePost_2);
        alarm[0] = 50;
    break;        
}    