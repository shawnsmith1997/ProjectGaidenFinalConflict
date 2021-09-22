//Cutscene 9 (Post Battle 4)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1000;
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 213){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",3,1.5);
            }                     
        } 
        
        view_object[0] = Character; 

        break;
   case 1000:
        State += 1;
        CreateDialogueBasic(21,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
   break;
   
   case 1001:
        State += 1;
        PanOutDialogueBasic();
   break;
   
   case 1002:
           State += 1;
           var Character;
        with(GenericCutsceneNPC){
            if(ID = 213){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,"Right",1,1.5);
            }                     
        } 
   break;
   
   case 1003:
        State += 1;
        CreateDialogueBasic(21,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
   break;
   
   case 1004:
        State += 1;
        PanOutDialogueBasic();
   break;
   
   case 1005:
           State += 1;
           var Character;
        with(GenericCutsceneNPC){
            if(ID = 213){
                Character = self.id;
                direction = 180;
                MoveCharacter(Character,"Left",3,1.5);
            }                     
        } 
   break;
   
   case 1006:
        State += 1;
        CreateDialogueBasic(21,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
   break;
   
   case 1007:
        State += 1;
        PanOutDialogueBasic();
   break;
   
   case 1008:
           State += 1;
           var Character;
        with(GenericCutsceneNPC){
            if(ID = 213){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,"Right",2,1.5);
            }                     
        } 
   break;
   
   case 1009:
        State += 1;
        CreateDialogueBasic(21,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
   break;
   
   case 1010:
        State += 1;
        PanOutDialogueBasic();
   break;
   
   case 1011:
           State += 1;
           var Character;
        with(GenericCutsceneNPC){
            if(ID = 213){
                Character = self.id;
                direction = 0;
                MoveCharacter(Character,"Down",3,1.5);
            }                     
        } 
   break;
   
   case 1012:
        State += 1;
        CreateDialogueBasic(21,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
   break;
   
   case 1013:
        State = 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 213){
                Character = self.id;
                direction = 0;
                instance_destroy();
            }                     
        } 
        sound_play(PopSound);
        PanOutDialogueBasic();
   break;   
   
   case 1:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("You did well, " + global.Name[1] + ".#We'll see the Kraken again I'm sure, but at least we got across the bridge quickly.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        view_object[0] = viewing_obj; 
        break;
    
    case 2:
        State = 4;
        PanOutDialogueBasic();
        break;
    
    
    case 4:
        State += 1;
        view_object[0] = viewing_obj2; 
        CreateDialogueBasic(0,0,string(WordWrap("Hey, boss!!#Ruburan, your men are in trouble!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 5:
        State = 2000;
        PanOutDialogueBasic();
    break;
    
    case 2000:
    State += 1;
               var Character;
        with(GenericCutsceneNPC){
            if(ID = 214){
                Character = self.id;
                direction = 270;
                MoveCharacter(Character,"Down",4,2);
            }                     
        } 
    break;
    
    case 2001:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("We were taken by surprise...#You tried to drive the Kraken away?!#Wait a moment...#Ruburan, it looks like you've made the Kraken angry...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 2002:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 2003:
    State = 6;
               var Character;
        with(GenericCutsceneNPC){
            if(ID = 214){
                Character = self.id;
                direction = 180;
                MoveCharacter(Character,"Left",4,2);
            }                     
        } 
    break;
    
    case 6:
        view_object[0] = viewing_obj; 
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Well, we made it through that one okay!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Oh! The bridge... the bridge is falling away!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State = 3000;
        PanOutDialogueBasic();
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        sound_play(CriticalSound);
        alarm[0] = 100;
    break;
    
    case 3000:
        State += 1;
        sound_play(CriticalSound);
        room_goto(BattleRoom04CutscenePost_2);
        alarm[0] = 100;
    break;    

}