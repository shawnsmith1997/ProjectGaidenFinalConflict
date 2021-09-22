//Cutscene 6 (Post Battle 2)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1000 ;
        instance_create(0,0,CutsceneCamera);
        instance_create(648,312,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject; 
        break;
   
   case 1000:
    State =3;
    
    var Character;
        with(GenericCutsceneNPC){
            if(ID = 1){
                Character = self.id;
                direction = 90;
            }
        }
        MoveCharacter(Character,'Up',6,2);
    view_object[0] = Character; 
    break;
    
        
    case 1:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("The vehicle at the ancient temple - tell us how to make it move!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 4;
        PanOutDialogueBasic();
        break;
    
    case 3:
        State = 1;
        alarm[0] = 60;
    break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("Alas! I know as much about it as everyone else...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("Elder!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap("Cynthia, please be quiet...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Mishaela! At last we have found you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State = 12;
        PanOutDialogueBasic();
    break;
    
    case 12:
        State += 1;
                var Character;
        with(GenericCutsceneNPC){
            if(ID = 210){
                Character = self.id;
                direction = 270;
                
            }
            if(ID = 211){
                Character = self.id;
                direction = 270;

            }
        }
        CreateDialogueBasic(8,0,string(WordWrap("Oh it's her! She took many of my men prisoner!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("My my, if it isn't Ruburan, head of the thieves! Don't you dare try anything, we have a hostage here don't forget.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Damn you! What's your plan?! Your men are weak, I'll have no problems taking them.",200,'#',false)),self.id,true);
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
            if(ID = 211){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,'Down',1,2);
            }
        }
    break;
    
    case 18:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("On the contrary...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("C'mon everybody!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Hohoho! Too bad for you, you guys don't know how to move the caravan. You can try as hard as you like to catch up with Max, but you won't succeed. Hohohoho!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    

    case 24:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("Adam, " + global.Name[1] + " and I will help you, although first we must rescue the Elder.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("We'll never lose to you, Mishaela, but we'll show you and your army true defeat.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("What? You must be joking!#Before they get the chance, we'll defeat these pests, won't we?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Right, Lynx! Hohohoho! Very amusing! I'd go so far as to say that this is a futile struggle for you. You might as well stay here. As for this old man, we've decided to take him with us. Since you can't use the caravan, you'll have to send out a pursuing party. I'm sure you'll see Max later on...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        CreateDialogueBasic(29,0,string(WordWrap(global.Name[1] + "! You must find Max quickly! You must use all your strength to restore the peace. Adam," + global.Name[1] + " - please remember me, I'm depending on you! " + global.Name[1] + "...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 34:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Tsk! We'll hang the old man!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 35:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 36:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("Elder...!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 37:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 38:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Try your best! I can't wait to see it! Ohohoho!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 39:
        State = 1002;
        sound_play(BadEventBGM);
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        alarm[0] = 50;
        PanOutDialogueBasic();
    break;
    
    case 1002:
        State += 1;
                        var Character;
        with(GenericCutsceneNPC){
            if(ID = 210){
                instance_destroy();
                
            }
            if(ID = 211){
                Character = self.id;
                direction = 270;
                instance_destroy();
            }
            if(ID = 206){
                Character = self.id;
                direction = 270;
                instance_destroy();
            }            
        } 
    break;
    
    case 1003:
        State += 1;
        with(ScreenFadeControler){
            instance_destroy();
        }
         var Character;
        with(GenericCutsceneNPC){
            if(ID = 1){
                Character = self.id;
                direction = 0;
                
            }
        }
        alarm[0] = 100;
    break;
    
    case 1004:
        State += 1;
         var Character;
        with(GenericCutsceneNPC){
            if(ID = 1){
                Character = self.id;
                direction = 180;
                
            }
        }
        alarm[0] = 20;
    break;
    
    case 1005:
        State += 1;
         var Character;
        with(GenericCutsceneNPC){
            if(ID = 1){
                Character = self.id;
                direction = 90;
                
            }

        }
        alarm[0] = 20;
    break;
    
    
    case 1006:
        State += 1;
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        alarm[0] = 20;
    break;
    
    case 1007:
        State = 40;
        with(ScreenFadeControler){
            instance_destroy();
        }
        room_goto(BattleRoom02CutscenePost2);
    break;
}
