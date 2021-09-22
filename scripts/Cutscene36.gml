
//Cutscene 12 (Pre Battle 18)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(278,216,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(0,0,string(WordWrap("After defeating General Lynx, the Shining Force arrived at Galam city to request an audience with King Galam.",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(0,0,string(WordWrap("What?! You all defeated the Devil Army's three Generals?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("Yes, that's correct.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Regrettably, we have a rather more shameful story to tell...Firstly, the Devil Army repeatedly confronted us too, and although we tried, we were eventually defeated, damn it! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("So that's what happened, eh?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Now, all my soldiers have been sent out, and I'll have to face the consequences. We won't be able to put up a resistance! We'll be forced to sit back and watch as the Devil is revived at the Ancient Tower. If you defeated the three Generals, the Devil Army will be trying to find you, to hinder your progress...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Ah, here you are, Shining Force!  We've found your whereabouts. Don't even think about trying to get away...  ...we need to have a private talk with King Galam, then we'll kill you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 16;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 231){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",6,1);                         
                }   
        }  
        view_object[0] = Character;
    break;     

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("King Galam has betrayed us! You'll pay for this with your lives! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 18;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 207){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }  
    break;      

    case 18:
        State += 1;
        view_object[0] = viewing_obj;
        instance_create(240,240,obj_flame);
        instance_create(168,264,obj_flame);
        instance_create(192,264,obj_flame);
        instance_create(240,264,obj_flame);
        instance_create(264,264,obj_flame);
        CreateDialogueBasic(0,0,string(WordWrap("We'll fight right here, and you'll not be leaving! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 20;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }  
    break;       

    case 20:
        State += 1;
        sound_play(BlazeFireStartSound);
        instance_create(168,288,obj_flame);
        instance_create(192,288,obj_flame);
        instance_create(240,288,obj_flame);
        instance_create(264,288,obj_flame);
        CreateDialogueBasic(16,0,string(WordWrap("That's what he says, but he's wrong!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 22;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                         
                }   
        }  
    break;                               

    case 22:
        State += 1;
        room_goto(BattleRoom18);
        instance_destroy();
    break;
}