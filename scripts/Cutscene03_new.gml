//Cutscene 2 (Meeting Max)
//can call 'with CutsceneControler' if needbe
switch (State){

    case 0:
        State += 1;
        PlayerTownObject.CutsceneMode = true;
        PlayerTownObject.AllowInteraction = false;//disable the player's motor skills. 
        PlayerTownObject.direction = 0;//can also use face direction script
        instance_create(0,0,CutsceneCamera);
        instance_create(984,576,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject;
        view_hspeed = 1;
        view_vspeed = 1;
        view_hborder[0] = 116;
        view_vborder[0] = 116;
    break;
    
    case 1: 
        State += 1;
        //set max to cutscene object
        //var TempGuy;
        with(FollowerCharacterObject){
            if(ID = 2){
                direction = 0;
                //TempGuy = instance_change(GenericCutsceneNPC,true);//change instance to cutscene npc
                CutsceneMode = true;
            }
        }
        //TempGuy.ID = 2;//set to max
        //TempGuy.direction = 0;
        //Have historian Minas walk out of church
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 270;
            }
        }
        MoveCharacter(Character,'Down',5,2);//walk him down 5 tiles
    break;
    
    case 2:
        State += 1;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 180;
            }
        }
        alarm[0] = 60;
    break;
    
    case 3:
        State += 1;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 0;
            }
        }
        alarm[0] = 60;
    break;
    
    case 4:
        State += 1;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 270;
            }
        }
        alarm[0] = 60;
    break;
    
    case 5:
        State += 1;
        CreateDialogueBasic(200,0,string(WordWrap("Good morning everyone.^ I have called you all here today to discuss a matter of grave importance.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 6:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 7:
        State += 1;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 0;
            }
        }
        alarm[0] = 120;
    break;
    
    case 8:
        State += 1;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 270;
            }
        }
        CreateDialogueBasic(200,0,string(WordWrap("The entire continent is dying.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 10:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 201){
                Character = self.id;
                //direction = 270;
            }
        }
        Shudder(Character);
    break;
    
    case 11:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 201){
                Character = self.id;
                //direction = 270;
            }
        }
        MoveCharacter(Character,'Up',1,4.8);//walk him up 1 tile
    break;
    
    case 12:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("What?^ How is that possible?^ We destroyed the gate!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 14:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                //direction = 270;
            }
        }
        NodHead(Character);
    break;
    
    case 15:
        State += 1;
        CreateDialogueBasic(200,0,string(WordWrap("Indeed the gate has been destroyed, but the damage it caused is severe.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 16:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#For obvious reasons, the area around the gate is a wasteland. The issue is.^.^.^ It's spreading.",200,'#',false)),true);
    break;
    
    case 17:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#Demonic magic still leaks from the gate, corrupting the surrounding land.",200,'#',false)),true);
    break;
    
    case 18:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#Soon the entire continent will be wiped out.",200,'#',false)),true);
    break;
    
    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 20:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 202){
                Character = self.id;
                //direction = 270;
            }
        }
        Shudder(Character);
    break;
    
    case 21:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Is there no way to contain it?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue6Sound;
    break;
    
    case 22:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 23:
        State += 1;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 180;
            }
        }
        CreateDialogueBasic(200,0,string(WordWrap("No.^ Demon magic is something that you don't want to mess with.^ It.^.^.^ changes people...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 24:
        State += 1;
        PanOutDialogueBasic();
    break; 
    
    case 25:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Then what do you suggest we do?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 26:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 27:
        State += 1;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                direction = 270;
            }
        }
        CreateDialogueBasic(200,0,string(WordWrap("We only have one option.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 28:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#We need to move to another continent.",200,'#',false)),true);
    break;
    
    case 29:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 30:
        State += 1;
        CreateDialogueBasic(0,0,string(WordWrap("Are you serious? I mean, we haven't even explored the other continents!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 31:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#How do we even know if it's safe?",200,'#',false)),true);
    break;
    
    case 32:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 33:
        State += 1;
        var Character;
        with(GenericCutsceneNPC){
            if(ID = 200){
                Character = self.id;
                //direction = 270;
            }
        }
        NodHead(Character);
    break;
    
    case 34:
        State += 1;
        CreateDialogueBasic(200,0,string(WordWrap("It is true that we haven't explored them but we do know they are out there.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 35:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#As far as safty is concerned,^ we have maybe two months before we die here anyways though you are correct.^ We cannot risk taking everyone at once.",200,'#',false)),true);
    break;
    
    case 36:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#Instead, I'll take a small team to explore the continent to the east and find a place suitable for a settlement.",200,'#',false)),true);
    break;
    
    case 37:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#After that, we'll return for the rest of you.",200,'#',false)),true);
    break;
    
    case 38:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#Does anyone want to volunteer for this mission?",200,'#',false)),true);
    break;
    
    case 39:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 40:
        State += 1;
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = PlayerTownObject;
    break;
    
    case 41:
        State += 1;
        var Character;
        with(FollowerCharacterObject){
            if(ID = 2){
                Character = self.id;
            }
        }
        Shudder(Character);
    break;
    
    case 42:
        State += 1;
        var Character;
        with(FollowerCharacterObject){
            if(ID = 2){
                Character = self.id;
                //direction = 270;
            }
        }
        MoveCharacter(Character,'Right',1,4.8);//walk him right 1 tile
    break;
    
    case 43:
        //play crash
        sound_play(HitSound);
        State += 1;
        with(PlayerTownObject){
            image_speed = 0;
        }
        MoveCharacter(PlayerTownObject,'Right',3,4.8);//walk him right 1 tile
    break;
    
    case 44:
        sound_play(BlazeFireStartSound);
        State += 1;
        PlayerTownObject.Rotation = 270;
        alarm[0] = 30;
    break;
    
    case 45:
        State += 1;
        CreateDialogueBasic(1,0,string(WordWrap("Ow...",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 46:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 47:
        State += 1;
        var Character;
        with(FollowerCharacterObject){
            if(ID = 2){
                Character = self.id;
                //direction = 270;
            }
        }
        MoveCharacter(Character,'Right',2,2.4);//walk him right 1 tile
    break;
    
    case 48:
        State += 1;
        var Character;
        with(FollowerCharacterObject){
            if(ID = 2){
                Character = self.id;
                direction = 90;
                sprite_index = LosMaxUp;
            }
        }
        Shudder(Character);
    break;
    
    case 49:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("We'll do it!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 50:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 51:
        State += 1;
        PlayerTownObject.Rotation = 0;
        PlayerTownObject.direction = 90;
        PlayerTownObject.image_speed = .0625;
        ShakeHead(PlayerTownObject);
    break;
    
    case 52:
        State += 1;
        CreateDialogueBasic(200,0,string(WordWrap("Ah excelent!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 53:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 54:
        State += 1;
        PlayerTownObject.direction = 180;
        CreateDialogueBasic(1,0,string(WordWrap("Max... What did you just get me into?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 55:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 56:
        State += 1;
        with(FollowerCharacterObject){
            if(ID = 2){
                direction = 0;
            }
        }
        CreateDialogueBasic(2,0,string(WordWrap("Probably a very thrilling adventure!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 57:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 58:
        State += 1;
        with(FollowerCharacterObject){
            if(ID = 2){
                direction = 90;
            }
        }
        PlayerTownObject.direction = 90;
        CreateDialogueBasic(200,0,string(WordWrap("Listen up you two.^ I'm going to go and make preparations and see if I can find more people for the journey.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 59:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#In the mean time, there's a pack of wolves in the forest to the north and I'm worried they might attack while we're gone.",200,'#',false)),true);
    break;
    
    case 60:
        State += 1;
        AppendDialogueBasic(string(WordWrap("#Would you mind taking care of them?",200,'#',false)),true);
    break;
    
    case 61:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 62:
        State += 1;
        CreateDialogueBasic(2,0,string(WordWrap("Sure thing sarge!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 63:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 64:
        State += 1;
        CreateDialogueBasic(1,0,string(WordWrap("We might as well.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 65:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 66:
        State += 1;
        CreateDialogueBasic(200,0,string(WordWrap("Alright. I'll be waiting for you here at the docks when you're finished.^ Good Luck!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue7Sound;
    break;
    
    case 67:
        State += 1;
        PanOutDialogueBasic();
    break;
    
    case 68:
        State += 1;
        CreateScreenFade(c_black,0,2,.02,'out',self.id);
    break;
    
    case 69:
        State += 1;
        global.StoryState += 1;//should equal 3
        global.TransitionState = 3;
        room_restart();
    break;
   
}