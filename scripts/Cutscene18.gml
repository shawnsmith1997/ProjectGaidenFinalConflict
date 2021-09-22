//Cutscene 18 (Pre Battle 9)
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
        CreateDialogueBasic(0,0,string(WordWrap("Magus, we must report to you that this man has broken Army regulations!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        State = 4;
        PanOutDialogueBasic();
        break;
    
    case 4:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Ah, if I remember correctly, you're Eric... that is your name, isn't it? I understand you used to be a spy...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 6:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("I didn't do anything of the sort!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 7:
        State = 1000;
        PanOutDialogueBasic();
    break;
    
    case 1000:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 211){
                    Character = self.id;
                    direction = 180;  
                    MoveCharacter(Character,"Left",5,1.5);         
                }   
        }    
    break;
    
    case 8:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Ah, Magus, you always did enjoy blaming the innocent...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 10:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Oh, it's you again. You do me an injustice, Lynx... have you changed sides?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;  

    case 12:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("You're such fun! Don't you see what I'm getting at? What does Eric wish to achieve?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("All I want is to see Mishaela. If I enter the Devil Army, one of these days I'll meet up with her... so, that's the reason for my actions.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;        

    case 16:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Wh... what?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;     

    case 18:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Uh-oh!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Y...you'll pay for your actions!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 22:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Why wait? This isn't especially interesting...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Lynx, what do you plan to do?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("I'll do it by the book, and set a trap to catch him",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Fight me, Eric! You won't beat me. Mishaela will give me extra points for catching you! You shall fall by my hands. C'mon!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 30;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 12){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Up",1,1.5);         
                }   
        }    
    break;    

    case 30:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("Oooh!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 31:
        State = 1003;
        PanOutDialogueBasic();
    break;
    
    case 1003:
    State = 32;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 12){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Right",1,2);         
                }   
        }    
    break;     

    case 32:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("Give up?...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 33:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 34;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 12){
                    Character = self.id;
                    direction = 0;  
                    MoveCharacter(Character,"Left",3,2);         
                }   
        }    
    break;      

    case 34:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("Give up.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 35:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 36:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Hey you - don't give up yet! You've got to catch Eric!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 37:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 38:
        State += 1;
        CreateDialogueBasic(12,0,string(WordWrap("You can't do that! I'm leaving this place now...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 39:
        State = 1005;
        PanOutDialogueBasic();
    break;

    case 1005:
    State = 40;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 12){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",13,2);         
                }   
        }    
    break;      
    
    case 40:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("After him!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 41:
        State = 1006;
        PanOutDialogueBasic();
    break;
    
    case 1006:
    State = 42;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 208){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",13,2);         
                }   
        }    
    break;      

    case 42:
        State += 1;
        CreateDialogueBasic(20,0,string(WordWrap("I wanted to defeat that man in a fair battle... it's disappointing that I did not kill him, Magus. We failed... but this was a battle I won't forget.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 43:
        State = 1007;
        PanOutDialogueBasic();
    break;
    
    case 1007:
    State = 44;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 209){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",8,2);         
                }   
        }    
    break;     

    case 44:
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Lynx is so selfish. One of these days I'll get even with him. First, I must find Eric, otherwise I'll be in big trouble!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 45:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 46:
        view_object[0] = viewing_obj2;
        State += 1;
        CreateDialogueBasic(10,0,string(WordWrap("Volcanon said that we should head North. If we carry on this way, and don't go astray, we should reach the town of Moun. We'll have to go via Moun to get to the far North, where he said we'll find a real treat at a place called Nazca.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 47:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 48:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Julia, go and scout ahead, but be quiet! Report back to us...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 49:
        State = 1008;
        PanOutDialogueBasic();
    break;
    
    case 1008:
    State = 1009;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 11){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",13,2);         
                }   
        }    
    break;     

    case 1009:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 1010:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 1011:
    State = 50;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 11){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",13,2);         
                }   
        }    
    break;          
    
    case 50:
        State += 1;
        CreateDialogueBasic(11,0,string(WordWrap("Those guys seem to be wandering around quite strangely, don't they? It seems that Magus is the commanding officer of the Devil Army's force here, and they're quite frantic right now to find a guy called Eric...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 51:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 52:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Eric... Interesting... Who is that, I wonder?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 53:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 54:
        view_object[0] = viewing_obj3;
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Any sign of Eric?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 55:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 56:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("No, he doesn't seem to be here.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 57:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 58:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("I don't know... he must be further away. We've gotta search well!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 59:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 60:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Hey! It's you guys again!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 61:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 62:
        view_object[0] = viewing_obj2;
        State += 1;
        CreateDialogueBasic(11,0,string(WordWrap("Damn it! It seems like we'll have to fight them again!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 63:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 64:
        view_object[0] = viewing_obj;
        State += 1;
        CreateDialogueBasic(24,0,string(WordWrap("Hmm, did those guys make it this far to the North? Put off the search for Eric, we must attack" + global.Name[1] + " and his Force!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 65:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 66:
        State += 1;
        room_goto(BattleRoom09);
    break;
}