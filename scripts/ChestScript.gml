//Default Chest Loot Script
var Chest,ContainerMessage,Empty,Item,Gold;
Chest = argument0;
ContainerMessage = " opens the chest.";//default chest search message
Empty = true;//default chests are empty
Item = 0;//default 'no item'
Gold = 0;//default 'no gold'
Recruit = 0;
JOG1 = 0;
JOG2 = 0;
JOG3 = 0;
JOG4 = 0;
JOG5 = 0;
JOG6 = 0;
JOG7 = 0;
JOG8 = 0;
Plate = 0;
//===============
//Container Info=
//===============


switch(Chest.ID){
    case 0: ContainerMessage = " opens the chest."; Empty = false; Item = 205; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;} break; //Battle02 - Quick Chicken
    case 1: ContainerMessage = " opens the chest."; Empty = false; Item = 208; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle05 - Power Wine
    case 23: ContainerMessage = " opens the chest."; Empty = false; Item = 206; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle05 - Protect Milk
    case 2: ContainerMessage = " opens the chest."; Empty = false; Item = 207; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle06 - Cheerful Bread
    //case 3: //locked chest script
    case 4: ContainerMessage = " opens the chest."; Empty = false; Item = 206; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle07 - Protect Milk
    //case 5: //Well script.
    case 6: ContainerMessage = " opens the chest."; Empty = false; Item = 205; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle08 - Quick Chicken
    case 7: ContainerMessage = " opens the chest."; Empty = false; Item = 10; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 10 - Quick Ring
    case 8: ContainerMessage = " opens the chest."; Empty = false; Item = 38; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 11 - Power Spear
    case 22: ContainerMessage = " opens the chest."; Empty = false; Item = 40; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 11 - Battle Axe
    case 9: ContainerMessage = " opens the chest."; Empty = false; Item = 209; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 12 - Protect Ring
    case 10: ContainerMessage = " opens the chest."; Empty = false; Item = 11; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 13 - Mobility Ring
    case 11: ContainerMessage = " opens the chest."; Empty = false; Item = 211; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 14 -  Power Ring
    case 24: ContainerMessage = " opens the chest."; Empty = false; Item = 211; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 14 -  Power Ring    
    case 12: ContainerMessage = " opens the chest."; Empty = false; Item = 52; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 15 -  Heat Axe
    case 13: ContainerMessage = " opens the chest."; Empty = false; Item = 213; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 16 - Black Ring
    case 25: ContainerMessage = " opens the chest."; Empty = false; Item = 214; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 16 - PImento
    case 14: ContainerMessage = " searches the cactus."; Empty = false; Item = 0; Gold = 0; Recruit = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 16 - Party Member 15
    case 15: ContainerMessage = " opens the chest."; Empty = false; Item = 53; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 18 - Kaiser Knuckles
    case 16: ContainerMessage = " opens the chest."; Empty = false; Item = 210; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 19 - Evil Ring
    case 17: ContainerMessage = " opens the chest."; Empty = false; Item = 55; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 19 - Demon Rod                     
    case 18: ContainerMessage = " opens the chest."; Empty = false; Item = 54; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 19 - Mystery Staff  
    case 19: ContainerMessage = " searches the clearing."; Empty = false; Item = 0; Gold = 0; Recruit = 2; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 19 - Party Member 17    
    case 20: ContainerMessage = " opens the chest."; Empty = false; Item = 212; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 20 - White Ring
    case 21: ContainerMessage = " opens the chest."; Empty = false; Item = 57; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break; //Battle 20 - Ground Axe       
    
    //JOGURT Panels
    case 31: ContainerMessage = " searches the area."; Empty = false; Item = 0; Gold = 0; JOG1 = 1; Plate = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;
    case 32: ContainerMessage = " searches the area."; Empty = false; Item = 0; Gold = 0; JOG2 = 1; Plate = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;  
    case 33: ContainerMessage = " searches the area."; Empty = false; Item = 0; Gold = 0; JOG3 = 1; Plate = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;  
    case 34: ContainerMessage = " searches the area."; Empty = false; Item = 0; Gold = 0; JOG4 = 1; Plate = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;  
    case 35: ContainerMessage = " searches the area."; Empty = false; Item = 0; Gold = 0; JOG5 = 1; Plate = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;  
    case 36: ContainerMessage = " searches the area."; Empty = false; Item = 0; Gold = 0; JOG6 = 1; Plate = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;  
    case 37: ContainerMessage = " searches the area."; Empty = false; Item = 0; Gold = 0; JOG7 = 1; Plate = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;  
    case 38: ContainerMessage = " searches the area."; Empty = false; Item = 0; Gold = 0; JOG8 = 1; Plate = 1; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;  
    //End
    
        
    default: ContainerMessage = " opens the chest."; Empty = true; Item = 0; Gold = 0; if(global.ChestLooted[Chest.ID] = 1){Chest.Looted = true;}  break;//default empty chest
}

//================
//Town Chest Code=
//================
if(global.RoomType = 'Town'){
    if(Chest.DialogueState = 0){
        image_index = 1;//open chest
        CreateDialogueBasic(0,0,WordWrap(string(global.Name[1]) + ContainerMessage,200,'#',false),Chest,true);
        DialogueControler.Voice = noone;
        Chest.DialogueState += 1;
    }
    else if(Chest.DialogueState = 1){
        PanOutDialogueBasic();
        Chest.DialogueState += 1;
    }
    //pause and loot animation goes here
    else if(Chest.DialogueState = 2){
        Chest.DialogueState += 1;
        if(Empty){
            Chest.Looted = true;
            if(!Respawnable){
                global.ChestLooted[ID] = 1;//Mark as looted 
            }
            CreateDialogueBasic(0,0,WordWrap("Unfortunately it was empty!",200,'#',false),Chest,true);
            DialogueControler.Voice = noone;
        }
        else if(Gold != 0){//looting gold
            global.Gold += Gold;
            Chest.Looted = true;
            if(!Respawnable){
                global.ChestLooted[ID] = 1;//Mark as looted 
            }
            CreateDialogueBasic(0,0,WordWrap(string(global.Name[1])+ " recieves " + string(Gold) + " gold!",200,'#',false),Chest,true);
            DialogueControler.Voice = noone;
        }
        else{//looting an item
            var i, j;
            i = 1;
            j = 1;
            while(i <= global.ForceMembers){
                if(global.In_Force[j]){//if they are in the force,
                    if(global.Items[j,4] = 0){
                        Give_Item_Town(j,Item);
                        CreateDialogueBasic(0,0,WordWrap(string(global.Name[j]) + " recieves the " + string(Get_Item_Stats(Item, "Name")) +  string(Get_Item_Stats(Item,"Name2")) +"!",200,'#',false),Chest,true);
                        DialogueControler.Voice = noone;
                        Chest.Looted = true;
                        if(!Respawnable){
                            global.ChestLooted[ID] = 1;//Mark as looted 
                        }
                        break;
                    }
                    i += 1;
                }
                j += 1;
            }
            if(i > global.ForceMembers){//didnt give item to a player so... display "nobody can hold it" message
                CreateDialogueBasic(0,0,WordWrap("But no one can hold it!",200,'#',false),self.id,true);
                DialogueControler.Voice = noone;
            }
        }
    }
    else if(Chest.DialogueState = 3){
        PanOutDialogueBasic();
        if(!Chest.Looted){
            image_index = 0;
        }
        Chest.DialogueState += 1;
    }
    else if(Chest.DialogueState = 4){
        Chest.DialogueState = 0;
        PlayerTownObject.AllowInteraction = true;
    }
}

//==================
//Battle Chest Code=
//==================
else if(global.RoomType = 'Battle'){
    var CurrentCharacter;
    CurrentCharacter = Cursor.TurnOrder[Cursor.CurrentTurn];
    
    if(Chest.DialogueState = 0){
        image_index = 1;//open chest
        if (Recruit = 1){
          global.ChestLooted[ID] = 1;//Mark as looted 
          CreateDialogueBasic(15,0,string(WordWrap("I am called Sasuke. I've trained with Hanzou, who defeated Dark Dragon. I cannot be defeated! Will you not allow me to join your group? So! I can join?! Since that's decided, let's do it! After the fight, you'll surely find me one step ahead, at Headquarters!",200,'#',false)),self.id,true);
        }
        else if (Recruit = 2){
          global.ChestLooted[ID] = 1;//Mark as looted 
          CreateDialogueBasic(17,0,string(WordWrap("I've come seeking to travel. My name is Kojirou, and I'm a swordsman. With a reputation such as yours, I'd like to serve you, eh?! If you're not defeated, we should join up - I won't let you know. What do you say? I understand the true potential of your powers... Well then, I'll wait for you at headquarters.",200,'#',false)),self.id,true);
        }
        else if ((global.ChestLooted[31] + global.ChestLooted[32] + global.ChestLooted[33] + global.ChestLooted[34] + global.ChestLooted[35] + global.ChestLooted[36] + global.ChestLooted[37] + global.ChestLooted[38]) > 6){
          global.ChestLooted[ID] = 1;//Mark as looted 
          sound_play(SpellCastSound);
          CreateDialogueBasic(21,0,string(WordWrap("Hello, I've been looking for you",200,'#',false)),self.id,true);
        }
        else if (Plate = 1){
          global.ChestLooted[ID] = 1;//Mark as looted 
          CreateDialogueBasic(0,0,string(WordWrap("You feel an immense power emanating throughout the shrine",200,'#',false)),self.id,true);
        }                    
        else{
          CreateDialogueBasic(0,0,WordWrap(string(CurrentCharacter.Name)+ ContainerMessage,200,'#',false),Chest,true);
        }
        DialogueControler.Voice = noone;
        Chest.DialogueState += 1;
    }
    else if(Chest.DialogueState = 1){
        PanOutDialogueBasic();
        Chest.DialogueState += 1;
    }
    //pause and loot animation goes here
    else if(Chest.DialogueState = 2){
        Chest.DialogueState += 1;
        if(Empty){
            Chest.Looted = true;
            if(!Respawnable){
                global.ChestLooted[ID] = 1;//Mark as looted 
            }
            CreateDialogueBasic(0,0,WordWrap("Unfortunately it was empty!",200,'#',false),Chest,true);
            DialogueControler.Voice = noone;
        }
        else if(Gold != 0){//looting gold
            global.Gold += Gold;
            Chest.Looted = true;
            if(!Respawnable){
                global.ChestLooted[ID] = 1;//Mark as looted 
            }
            sound_play(LootSound);
            CreateDialogueBasic(0,0,WordWrap(string(CurrentCharacter.Name)+ " recieves " + string(Gold) + " gold!",200,'#',false),Chest,true);
            DialogueControler.Voice = noone;
        }
        else{//looting an item
            if (Recruit = 1){
                CreateDialogueBasic(0,0,WordWrap("Sasuke joins the Shining Force",200,'#',false),self.id,true);
                global.In_Force[15] = true;//Did they join the team yet?
                global.In_Battle_Party[15] = false;//Are they part of your active battle party?
                global.BattlePartyNumber = 12; 
                global.ForceMembers = 15; //how many in force
                Chest.Looted = true;
            }
            else if (Recruit = 2){
                CreateDialogueBasic(0,0,WordWrap("Kojirou joins the Shining Force",200,'#',false),self.id,true);
                global.In_Force[17] = true;//Did they join the team yet?
                global.In_Battle_Party[17] = false;//Are they part of your active battle party?
                global.BattlePartyNumber = 12; 
                global.ForceMembers += 1; //how many in force
                Chest.Looted = true;
            }
            else if ((global.ChestLooted[31] + global.ChestLooted[32] + global.ChestLooted[33] + global.ChestLooted[34] + global.ChestLooted[35] + global.ChestLooted[36] + global.ChestLooted[37] + global.ChestLooted[38]) > 7){
                CreateDialogueBasic(0,0,WordWrap("JOGURT joins the Shining Force",200,'#',false),self.id,true);
                //sound_play(JoinBGM2);
                instance_create(336,744,JogurtObj);
                Chest.Looted = true;
            }
            else if (Plate = 1){
                Plate = 0;
                CreateDialogueBasic(0,0,WordWrap("...",200,'#',false),self.id,true);
                sound_play(CriticalSound);
                Chest.Looted = true;
            }                          
            else if(CurrentCharacter.Items[4] = 0){//if open inv space
                Give_Item_Battle(CurrentCharacter,Item);//give item to player
                CreateDialogueBasic(0,0,WordWrap(string(CurrentCharacter.Name) + " recieves the " + string(Get_Item_Stats(Item, "Name")) +  string(Get_Item_Stats(Item,"Name2")) + "!",200,'#',false),Chest,true);
                sound_play(LootSound);
                DialogueControler.Voice = noone;
                Chest.Looted = true;
                if(!Respawnable){
                    global.ChestLooted[ID] = 1;//Mark as looted 
                }
                //break;
            }
            else{//didnt give item to a player so... display "nobody can hold it" message
                CreateDialogueBasic(0,0,WordWrap("But is unable to hold it!",200,'#',false),self.id,true);
                DialogueControler.Voice = noone;
            }
        }
    }
    else if(Chest.DialogueState = 3){
        PanOutDialogueBasic();
        if(!Chest.Looted){
            image_index = 0;
        }
        Chest.DialogueState += 1;
    }
    else if(Chest.DialogueState = 4){
        Chest.DialogueState = 0;
        CurrentCharacter.direction = 270; //Have the character face down
        CurrentCharacter.image_index = BattleControler.image_index; //keeps every character marching in sync
        
        with(BattleControler){
            State = 'Stay';
            LEPanDirection = 'out';
            sound_play(MenuPanSound);
        }
    }
}
