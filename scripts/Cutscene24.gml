
//Cutscene 12 (Pre Battle 12)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(0,0,string(WordWrap("Ian and the others flew across to Grans Tower in the Nazca Ship, a flying ship made by the Ancients. However, Grans has become a savage land since the monsters began to roam free...",200,'#',false)),self.id,true);
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
        with(ScreenFadeControler){
            instance_destroy();
        }
        CreateDialogueBasic(8,0,string(WordWrap("This is a very remote place...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(13,0,string(WordWrap("It seems quite rough, doesn't it? How uncivilised! I really don't understand what would make anyone want to come here!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("This mist is very thick... it's quite mysterious...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("It may seem mysterious, but there's no doubt about it, this is the place!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 12;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1000){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Up",22,1);         
                }   
        }
        view_object[0] = Character;
    break;      

    case 12:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Mwahaha! We've been eagerly awaiting your arrival!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("It seems as though the Devil Army has been lurking in the mist!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Once our spies informed us that you were heading for Grans, we laid in wait for you. We thought you'd crawl by sometime... (guffaws) ...and it's just as we thought! Now it's time for us to defeat you in battle!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        room_goto(BattleRoom12);
        instance_destroy();
    break;
}