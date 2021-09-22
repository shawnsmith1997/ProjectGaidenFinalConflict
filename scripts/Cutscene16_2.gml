//Cutscene 16 (Pre Battle 8)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
   break;
   
   case 1:
   State = 10;
           var Character;
            with(GenericCutsceneNPC){

                if(ID = 1000){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Right",20,1.5);         
                }   
        }
        view_object[0] = Character;   
   break;

    case 10:
        view_object[0] = viewing_obj2;
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Heh heh heh! Good, it worked. They soon lost their fighting spirit! Now everybody, let's march into Pacalon!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;  

    case 12:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Oooh!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 14;
    var Character;
            with(GenericCutsceneNPC){
                if(ID = 207){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",5,1.5);         
                }                      
        }
        view_object[0] = viewing_obj3;   
    break;    

    case 14:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Ian, we'll soon be reaching Pacalon, the country of centaurs. Over there you'll see a crowd of their splendid Knights! looks towards Pacalon",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State = 2000;
        PanOutDialogueBasic();
    break;    
    
    case 2000:
    State = 16;
    var Character;
            with(GenericCutsceneNPC){
                if(ID = 1){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",4,1.5);         
                }                      
        }    
    break;    

    case 16:
        State += 1;
         view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("Ah! That's scary... I don't see anyone. If I'm not mistaken, that's the Devil Army! Ian, we must assist our allies.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;     

    case 18:
        State += 1;
         view_object[0] = viewing_obj2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh, Master Magus! Look over there - Ian and his Force have arrived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Well, if we're to take the castle, we must plan an attack on Ian and his soldiers!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 22:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Ahh! It looks like our soldiers were defeated by Ian yet again!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Well, this ground will make a great battlefield. We've got no choice, they must be defeated!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
    room_goto(BattleRoom08);
    break;
}