//Cutscene 23 (Post Battle 11)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State += 1;
        instance_create(0,0,CutsceneCamera);
        instance_create(260,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
   break;
     
   case 1:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(24,0,string(WordWrap("My elite team have been defeated.... th... those fools... Ugh! Perhaps those guys really are the Shining Force? Lynx, I beg you... please, capture my enemies! Uuuggghhh",200,'#',false)),self.id,true);
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

                if(ID = 220){
                    Character = self.id;
                    direction = 180;  
                    instance_change(obj_explosion2,true);        
                }   
        }
        Cutscene23();    
    break;         
    
    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Magus... that terrible coward had it coming. But, we're not there yet " + global.Name[1] + ". We still have to find Master Max!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
        sound_loop(SF1Theme)
        sound_stop(EvilIntention);
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Well done, Ian!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 8:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Eh? That's not Volcanon's voice...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 10:
        State += 1;
        CreateDialogueBasic(25,0,string(WordWrap("I am Mitula. Volcanon sends his heartfelt gratitude. I've been watching over you from my country, Tristan.",200,'#',false)),self.id,true);
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

                if(ID = 222){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",7,1);         
                }   
        }
    break;      

    case 12:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Goddess Mitula?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 14;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 222){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",2,0.75);         
                }   
        } 
    break;     

    case 14:
        State += 1;
        CreateDialogueBasic(25,0,string(WordWrap("I too am a follower of Volcanon, and also your ally! " + global.Name[1] + ", you must prevent the devil's revival... the time is approaching steadily.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 16;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 222){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,0.75);         
                }   
        } 
    break;             

    case 16:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So you're Goddess Mitula... Tell me, what is Master Max's purpose in all this?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;     

    case 18:
        State += 1;
        CreateDialogueBasic(25,0,string(WordWrap("You must defeat Max in a battle at Grans Tower.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("What! How can we defeat Max, our Master?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 22:
        State += 1;
        CreateDialogueBasic(25,0,string(WordWrap("So, where would you go instead? You have to take your chance to counterattack. Max will certainly be waiting for you, this is meant to be. ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("But Max is one of us... ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(25,0,string(WordWrap("Max's power is gone, you are now the forces of Light. ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State = 30;
        PanOutDialogueBasic();
    break;

    case 30:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("We are the Shining Force...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State = 34;
        PanOutDialogueBasic();
    break;

    case 32:
        State += 1;
        CreateDialogueBasic(25,0,string(WordWrap("That's right!" + global.Name[1] + ", before you go on to search for Max, I must give you this: the Necklace of Light. According to legend, it's radiance has been waiting for you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 34:
        State += 1;
        instance_create(144,168,NecklaceofLight);
        CreateDialogueBasic(25,0,string(WordWrap( "That's right! " + global.Name[1] + ", before you go on to search for Max, I must give you this: the Necklace of Light. According to legend, it's radiance has been waiting for you! I'm afraid to say, my powers are limited and are being obstructed, but I'll be praying for your safety.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 35:
        State += 1;
        with(NecklaceofLight){
            instance_destroy();
        }
        PanOutDialogueBasic();
    break;

    case 36:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Even if this magician from Tristan joins us, we still don't know how we're going to get to Grans Tower...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 37:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 38:
        State += 1;
        CreateDialogueBasic(13,0,string(WordWrap("Use the Nazca Ship!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 39:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 40;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 13){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",5,0.75);         
                }   
        }
       view_object[0] = Character;  
    break;     

    case 40:
        view_object[0] = viewing_obj;
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Nazca Ship?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 41:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 42:
        State += 1;
        CreateDialogueBasic(13,0,string(WordWrap("The Ancients built it, a vehicle to fly in the air! I'm Minto, a magician from Mitula's country of Tristan. I came to explain to you the legend of the Nazca Ship.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 43:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 44:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("So, you're from Tristan... But, what Nazca Ship? Where is it?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 45:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 46:
        State += 1;
        CreateDialogueBasic(13,0,string(WordWrap("giggles - It's right here! The very ground beneath us will fly, it is the ship. As your friend and ally, please allow me to come along with you.  ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 47:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 48:
        State += 1;
        sound_play(JoinBGM2);
        CreateDialogueBasic(0,0,string(WordWrap("Minto the Wizardess has joined the Force.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 49:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 50:
        State += 1;
        sound_loop(SF1Theme)
        CreateDialogueBasic(13,0,string(WordWrap("This is the entrance to the Nazca Ship. Please follow me!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 51:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 52:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Minto placed a jewel, sparkling with light, on the ground.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 53:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 54:
        State += 1;
        CreateDialogueBasic(13,0,string(WordWrap("The Nazca Ship is ready to fly.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 55:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 56:
        State += 1;
        CreateDialogueBasic(13,0,string(WordWrap("Well, everyone, let's all get in! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 57:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 58:
        CreateScreenFade(c_black,1,1,0,'none',self.id);
        ScreenFadeControler.depth = -9999;//change depth so dialogue displays over it.
        alarm[0] = 60;
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Ian and the Force are heading towards dark clouds as the Devil Army's plot for Grans Tower develops...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 59:
        State += 1;
        PanOutDialogueBasic();
    break;                           

    case 60:
        State += 1;
        room_goto(Chapter2End);
    break;

}