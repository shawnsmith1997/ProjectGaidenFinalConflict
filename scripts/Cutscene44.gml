
//Cutscene 12 (Post Battle 20)
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
        CreateDialogueBasic(30,0,string(WordWrap("This is the place of Lord Darksol's revival.... Soon his revival will be completed. At that time, anyone who stands in his way will be powerless against him! Until then, Ian and his force must not be allowed anywhere near Lord Darksol.",200,'#',false)),self.id,true);
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
        CreateDialogueBasic(0,0,string(WordWrap("Mistress Mishaela, even if Max is defeated, those guys pose no threat for you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Well, I won't be defeated! I think Ian will give us more trouble than Max did... But, if by some chance they make it here, you must fight with all your strength!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Ian being more troublesome than Max...?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("You should not take Ian so lightly. He's a talented man, and will require extra attention when we deal with him...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Don't think you know Ian so well, Mishaela!",200,'#',false)),self.id,true);
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

                if(ID = 18){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",2,1);                         
                }   
        }  
    view_object[0] = Character;
    break;     

    case 14:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("It can't be...! How did those guys get here?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State = 1009;
        PanOutDialogueBasic();
    break;
    
    case 1009:
    State = 16;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 210){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",2,1);                         
                }   
        }  
    break;      

    case 16:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("Thanks to Ian, I've been able to return to my old self. I'm sure you don't understand how powerful Ian is!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Well, well, well... isn't this a surprise?! It seems there's something you don't know about Ian yet, Max. 20 years ago a prophet in Manarina gave your brother Kane a prediction...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("What?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("That prediction spoke of our reviving Lord Darksol, at this very place. Kane didn't like the thought of that. He had a son, and sent him away to defeat Lord Darksol. ...and that son was... Ian!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("What!? Could it be?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 26:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Kane raised his son to lead a Shining Force, just like you, his brother, lead the Shining Force. His son was to follow in your footsteps.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap( "Ian, you......are my older brother's son...!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State = 31;
        PanOutDialogueBasic();
    break;

    case 31:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("I found out about this through Hassan's Elder, and I was surprised too! Such a thing just can't be, can it?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 32:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 33:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Lord Darksol's revival is almost complete! Ohohohoho! This time, without a doubt, you fools shall not hinder the realisation of our dream.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 34:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 35:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Mishaela, you can't do that! I can't allow you to use Lord Zeon's power in the revival of Darksol.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 36:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 37;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 19){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",16,1);                         
                }   
        }  
    view_object[0] = Character;
    break;     

    case 37:
        State += 1;
        CreateDialogueBasic(18,0,string(WordWrap("W... who's that?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 38:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 39:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("Y... you're Oddeye! A devil of similar social standing to myself... Does this mean you've sided with those guys? Good for you, Oddeye. You can try to hinder us all you like, but it will do no good. I'll risk my life to see Lord Darksol revive completely!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 40:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 41:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("Mishaela, you need to wake up! Why are you going this far? All you're doing is what Darksol wants you to do. You're putting your life on the line here... what will he tell you to do next?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 42:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 43:
        State += 1;
        CreateDialogueBasic(30,0,string(WordWrap("We must protect Lord Darksol's dear child, Mephisto! Because of that goal, my life isn't important.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 44:
        State = 1002;
        PanOutDialogueBasic();
    break; 
    
    case 1002:
    State = 45;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 19){
                    Character = self.id;
                    direction = 270;                         
                }   
        }  
    Cutscene44();
    break;      

    case 45:
        State += 1;
        CreateDialogueBasic(19,0,string(WordWrap("Ian! If it's like this, one man alone cannot defeat Mishaela. Darksol's revival must be stopped! I'll join your party. ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 46:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 47:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Oddeye has joined the Shining Force.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 48:
        State += 1;
        PanOutDialogueBasic();
    break;   

    case 49:
        State += 1;
        room_goto(BattleRoom21);
        instance_destroy();
    break;
}