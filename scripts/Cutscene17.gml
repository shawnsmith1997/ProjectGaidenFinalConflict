//Cutscene 17 (Post Battle 8)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj2;
   break;
     
   case 1:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("How could this happen?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",4,1.5);         
                }   
        }
    break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Hehehe! What's wrong Magus?! Did things not go according to plan?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 6;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 220){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,1.5);         
                }   
        }
    break;    
    
    case 6:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("L....Lynx...?... You got that right! Now they are only a step away from the ruins you were talking about.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 8:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Under these circumstances I can see the limit of your abilities. It's clear that I'm superior to you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 10:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("That's not fair! Things always go well for those guys... they'll go down in history!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;  

    case 12:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("It seems like you weren't paying attention, so they found you. I'm leaving.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Please, Lynx! I beg you to take me with you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;        

    case 16:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("...well, alright I'll help you this once.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 18;
    var Character1;
    var Character2;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character1 = self.id;
                    direction = 0;  
                    MoveCharacter(Character1,"Right",10,1.5);         
                }

                if(ID = 220){
                    Character2 = self.id;
                    direction = 0;  
                    MoveCharacter(Character2,"Right",10,1.5);         
                }                      
        }
    break;         

    case 18:
        sound_loop(TownOST);
        view_object[0] = viewing_obj;
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap(global.Name[1] + ", the enemy has retreated!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 20;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 10){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",5,1.5);         
                }                    
        }
    break;     

    case 20:
        State += 1;
        CreateDialogueBasic(10,0,string(WordWrap("I'm Sylvia, a Knight from Pacalon. Thanks to you our country is safe and the Devil army has departed. You must be " + global.Name[1] + ", right? I know that because we received a report from Volcanon's country, Bedoe.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 22;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 11){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",5,1.5);         
                }                      
        }    
    break;
    
    case 22:
        State += 1;
        CreateDialogueBasic(11,0,string(WordWrap("I flew to Pacalon from Bedoe when I heard about the Devil Army. I can't fly any further without a rest, and I'm sure you could do with one too, eh? Ha ha ha!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So, you were the one at Bedoe with Kiddo, fighting the Devil Army...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(11,0,string(WordWrap("Ah yes, I remember that. I also entered the cave, and just missed the cave-in. So, I quickly made it through one step ahead of you to Pacalon.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(10,0,string(WordWrap("Your actions have made me think... ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        CreateDialogueBasic(10,0,string(WordWrap("I'd like to come with you all and fight to protect our world.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        CreateDialogueBasic(11,0,string(WordWrap("I hope I'm not too late, but I also wish to join you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 34:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Sylvia the Knight and Julia the Birdwoman join the Force.",200,'#',false)),self.id,true);
        sound_play(JoinBGM2);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 35:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 36:
        State += 1;
        CreateDialogueBasic(10,0,string(WordWrap("Before we go on to fight, we should all take a rest in Pacalon.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        sound_loop(TownOST);
    break;

    case 37:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 38:
        State += 1;
        CreateDialogueBasic(11,0,string(WordWrap("Let's head into the city.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 39:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 40:
        State += 1;
    room_goto(Town1);
    break;
}
