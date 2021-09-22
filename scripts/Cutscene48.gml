
//Cutscene 12 (Post Battle 21)
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
        CreateDialogueBasic(16,0,string(WordWrap("...and so that's what happened, King Galam.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State = 1000;
        PanOutDialogueBasic();
    break;

    case 4:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Splendid work, most admirable! You really are the Shining Force!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 1000:
    State = 4;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 230){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",1,1);                   
                }   
        }  
    break;    
    
     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("But, Darkol's powers are still present in this world. He's not dead... and his revival must be prevented. So, Ian left this sword, so it's powers could offer some protection.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;    
    
    case 7:
        State = 1001;
        PanOutDialogueBasic();
    break;
    
    case 1001:
    State = 8;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Up",1,1);                   
                }   
        }  
    break;      

    case 8:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("This is the ancient sword that Max wielded, and that I awarded you recently, is it not?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State = 1002;
        PanOutDialogueBasic();
    break;
    
    case 1002:
    State = 10;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 16){
                    Character = self.id;
                    direction = 90;  
                    MoveCharacter(Character,"Down",1,1);                   
                }   
        }  
    break;     

    case 10:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("That's correct, your Majesty. This sword posesses the Powers of Light. Please use it's powers to protect against the devils' revival.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("I understand completely. So, how about this? Since it's said that Zeon is sealed there too, we'll place this sword in the shrine. Because it possesses the protective Powers of Light, I expect it will supply extra protective strength.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("Many thanks, your Majesty.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 16:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("So, after this the sword will be placed in the ancient shrine. The sword will be renamed to Force Blade, in honour of all you've done. It's a good idea, don't you think?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("The Force Blade? Thank you, your Majesty, this is a very happy occasion.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("And now, my children, have you decided on a person to work together with Galam in protecting the Ground Seal?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        CreateDialogueBasic(16,0,string(WordWrap("Yes, we all agreed that this matter should be decided by Ruburan...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("This man is to become the King of Ground Seal. He's a more patient man than I, and far more suitable. Allow me to introduce him!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State = 1004;
        PanOutDialogueBasic();
    break;
    
    case 1004:
    State = 26;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 8){
                    Character = self.id;
                    direction = 0;                     
                }   
        }  
    Cutscene48();
    break;    

    case 26:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Nosshu is honest... and what strength! I mean, he travelled all the way here by himself. He'll certainly become a great King, don't you agree, King Galam?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 27:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 28:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap( "B....but, Boss, I'm useless when compared with you...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 29:
        State = 31;
        PanOutDialogueBasic();
    break;

    case 31:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Everyone has recommended that I make the decision, and I chose you, Nosshu. I don't expect anyone anyone would disagree that you'll make a good King, isn't that right?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 32:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 33:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Well, if it's the decision of the Shining Force, then who am I to refuse it?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

case 34:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 35:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Yahoo!It's decided, it's decided! Nosshu will be the King!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 36:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 37:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("It's it great, Nosshu?! If you hadn't shown up when we faced the Kraken, I don't know what we would have done. Nosshu... you'll really become a good King.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 38:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 39:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("...Y... yes, boss!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 40:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 41:
        State += 1;
        CreateDialogueBasic(5,0,string(WordWrap("Nosshu, congratulations on being the founder of Ground Seal! And... would you mind if I were to build a town alongside yours?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 42:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 43:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Eh?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 44:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 45:
        State += 1;
        CreateDialogueBasic(5,0,string(WordWrap("There are many things I'd like to look into, following our victory over the terrible crisis. The existance of devils and the seals... the purpose of Light. I'd like to investigate the value of some of these phenomenon, there's a lot to learn!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 46:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 47:
        State += 1;
        CreateDialogueBasic(3,0,string(WordWrap("Ah, once again we see the scholar's curiousity in Hawel... Hawel, do your best! Together with Nosshu you'll make a magnificent country.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 48:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 49:
        State += 1;
        CreateDialogueBasic(5,0,string(WordWrap("Uh-huh, Sonette, I'll do my best!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 50:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 51:
        State += 1;
        CreateDialogueBasic(8,0,string(WordWrap("Good.... but everyone must try their hardest now that Ian, Max and Adam aren't here anymore. Where did those guys go, anyway?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 52:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 53:
        State += 1;
        CreateDialogueBasic(6,0,string(WordWrap("You're right... where did they all go?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 54:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 55:
        State += 1;
        CreateDialogueBasic(4,0,string(WordWrap("Even Oddeye fought alongside us. Everyone joined together, and for the first time we really were the Shining Force...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 56:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 57:
        State += 1;
        CreateDialogueBasic(7,0,string(WordWrap("But, I think I can understand more or less how Ian and the others must be feeling. As a man, I feel that now is the time for preparations... I want to travel too!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 58:
        State += 1;
        PanOutDialogueBasic();
    break;  

    case 59:
        State += 1;
        CreateDialogueBasic(4,0,string(WordWrap("What?! Knuckles, you'd just sleep in late while everyone else left...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 60:
        State += 1;
        PanOutDialogueBasic();
    break;   

     case 61:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("But, I'm sure they'll come back to us someday. Someday, without a doubt...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 62:
        State += 1;
        PanOutDialogueBasic();
    break; 

    case 63:
        State += 1;
        room_goto(Epilogue2);
        instance_destroy();
    break;
}