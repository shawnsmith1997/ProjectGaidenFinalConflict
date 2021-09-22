switch (State){
//====================
//Start Magic Sequence
//====================
case 0:
    CreateBattleDialogueBasic(WordWrap(string(Attacker.Character.Name) +' casts ' + 'Bolt level 2' + '!^@ ',200,'#',false), self.id);
    State = 10;//Perform Spell Cast animation
    break;
//==========================
//Start Spell Cast Animation
//==========================
case 10:
    with(BattleCutsceneDialogueControler){//remove the dialogue
        instance_destroy();
    }
    //Have character perform attack animation
    with(Attacker){
        State = 'SpellCast';//Tell the character what animation to perform
        event_perform(ev_other,ev_user0);//user 0 starts the correct animation
    }
    State = 20;//Fire Spell
    break;    
//==========
//Fire Spell
//==========
case 20:
    //Attacker.Character.Magic -= Get_Spell_Stats(Spell,SpellLevel,'ManaCost');//subtract mana cost
    //if(Attacker.Character.Magic < 0){//cap it at 0 (if it somehow goes negetives)
       // Attacker.Character.Magic = 0;
    //}
    //with(Attacker){
        //event_perform(ev_other,ev_user1);//update battle HUD
    //}
    State = 30;//Start spell
    sound_play(SpellCastSound);
    UseEvilRing();
    break;
//===========
//Start Spell
//=========== 
case 30:
    State = 40;//post delay
    instance_create(0,0,BattleCutsceneMagicControler);
    break;
//==========
//Post Delay
//==========
case 40:

    State = 50;//Deal Damage (or Heal)
    //State = 45;
    if(TestForPan()){
        
        PanBattleCutscene();
    }
    else{
        
        event_perform(ev_other,ev_user0);
    }
    break;
//===========
//Deal Damage
//===========     
case 50:
    
    with(BattleCutsceneMagicControler){//If an animation plays, play it, otherwise this does nothing
        Spell = 'Bolt';
        SpellLevel = 2;
        event_perform(ev_other,ev_user0);               
    }
    
 //   
    
    
    State = 60;//Display Hit Message

        //test for critical attack
        if(Test_Critical_Hit(Attacker.Character)){
            Critical = 1;
        }
        Damage = round(16 *(1 + .25*Critical));
        Critical = 0;
        if(Damage <= 0){
            Damage = 1;
        }
        Reciever.Character.Health -= Damage;
        if(Reciever.Character.Health <= 0){
            Reciever.Character.Dead = true;//Flag character as dead
            Reciever.Character.Health = 0;
            BattleControler.Deaths +=1;
            if(Attacker.Character.GuyType = 'player'){//update kills (if enemy died)
                Attacker.Character.Kills += 1;
            }
            if(Reciever.Character.GuyType = 'player'){//update deaths (if player died)
                global.IsDead[Reciever.Character.ID] = true;//globally flag as dead.
                Reciever.Character.Defeats += 1;
            }
        }
        with(Reciever){
            event_perform(ev_other,ev_user1);//update HUD
            Hit = 10;
            HitFlash = 0;
            State = 'Hit';
            sound_play(HitSound);
        }
        if(Attacker.Character.GuyType = 'player'){//add XP only if the player does damage
            if(Calculate_Z(Attacker.Character,Reciever.Character) > HighestZ){//remember what our XP cap is.
                HighestZ = Calculate_Z(Attacker.Character,Reciever.Character);
            }
            EXP += Calculate_EXP(Calculate_Z(Attacker.Character,Reciever.Character),Damage,Reciever.Character.MaxHealth,MinimumXP,Reciever.Character.Dead)//Z,D,M,Min,Bonus
        }
    
      
    
    //else if(Get_Spell_Stats(Spell,SpellLevel,8)= 'Status'){
        
    //}
    break;
//===================
//Display Hit Message
//===================
case 60:
    
    //create null message first, then append. Way easier.
   
        if(Critical){//if criticalmessage
            CreateBattleDialogueBasic(WordWrap('Critical Hit!#' + string(Reciever.Character.Name) + ' took ' + string(Damage) + '  Damage!',200,'#',false), self.id);
        }
        else{
            CreateBattleDialogueBasic(WordWrap(string(Reciever.Character.Name) + ' took ' + string(Damage) + '  Damage!',200,'#',false), self.id);
        }
    
    if(Reciever.Character.Health <= 0){//if target is dead, append death message
        AppendBattleCutsceneDialogueBasic(WordWrap('#'+string(Reciever.Character.Name)+' was defeated.',200,'#',false));
        Reciever.Dead = true;//Play death animation (This is put here so it plays AFTER the hit animation)
        Reciever.Character.Dead = true;//Flag character as dead
        if((Attacker.Character.GuyType = 'player') && (Attacker.Character.GuyType != Reciever.Character.GuyType)){//if the player is not attacking its allies
            Gold += Reciever.Character.Gold;//reward gold
        }
    }
    else{
        AppendBattleCutsceneDialogueBasic(ApplySpellBattleCutsceneStatusEffects(Spell,SpellLevel,Reciever.Character));
    }
    AppendBattleCutsceneDialogueBasic('^@ ');//add delay and action call to the message
    State = 70;//continue cutscene
    break; 
//=================
//Continue Cutscene
//=================
case 70:
    with(BattleCutsceneDialogueControler){//remove the dialogue
        instance_destroy();
        
    }
    if(TargetIndex < (NumberOfTargets -1)){//if there are more targets
        
        //cycle through the rest of the targets
        ReturnToAttacker = false;
        TargetIndex +=1;
        NextCharacter = CurrentTarget[TargetIndex];
        Reciever = NextCharacter;
        State = 40;//post delay
        event_perform(ev_other,ev_user0);
    }
    else{//done with all targets
        with(BattleCutsceneMagicControler){
            instance_destroy();
        }
        ReturnToAttacker = true;
        
        NextCharacter = CurrentCharacter[0];//Pan to original character
        if(TestForPan()){//if not on screen
            State = 90;//End Battle Phase
            PanBattleCutscene();
        }
        else{
            if(Attacker.State = 'Pause'){//if not returned to idle state
                
                State = 80;//End spell cast Animation
                event_perform(ev_other,ev_user0);
            }
            else{
                
                State = 90;//End Battle Phase
                event_perform(ev_other,ev_user0);
            }
        }
    }
    break;
//===================
//End Spell Animation
//===================
case 80://end attack animation
    
    Attacker.State = 'EndSpellAnimation';
    with(Attacker){
        event_perform(ev_other,ev_user0);
    }
    State = 90;//end battle Phase
    break;
//================
//End Battle Phase
//================    
case 90:
    
    State = 100;//Level Up (if we get there)
    if((!CurrentCharacter[0].Character.Dead)&&(EXP > 0)&&(CurrentCharacter[0].Character.GuyType = 'player')){//if player gets XP,
        var Experience;
        Experience = Finalize_Exp(EXP,HighestZ);
        CreateBattleDialogueBasic(WordWrap(string(CurrentCharacter[0].Character.Name)+ ' recieves ' + string(Experience) + '  Exp.^@ ',200,'#',false), self.id);
        Player = CurrentCharacter[0].Character;
        Player.Experience += Experience;
    }
    else if((!CurrentTarget[0].Character.Dead)&&(EXP > 0)&&(CurrentTarget[0].Character.GuyType = 'player')){//if player gets XP,
        var Experience;
        Experience = Finalize_Exp(EXP,HighestZ);
        CreateBattleDialogueBasic(WordWrap(string(CurrentTarget[TargetIndex].Character.Name)+ ' recieves ' + string(Experience) + '  Exp.^@ ',200,'#',false), self.id);
        Player = CurrentTarget[TargetIndex].Character;
        Player.Experience += Experience;
    }
    else{//no xp for you
        State = -1;//No state, end cutscene
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    break;
//========
//Level Up
//========
case 100:
    if(Player.Experience >= 100){//check for level up
        sound_play(HealSound);
        AppendBattleCutsceneDialogueBasic(GetStatGains(Player));//give player stat gains and display on screen (this event is then re-called after)
        with(BattleCutscenePlayerControler){//update battle window display
            event_perform(ev_other,ev_user1);
        }
    }
    else{//no level up (or broke the level up loop)
        if(Gold != 0){//Append gold
            global.Gold += Gold;
            AppendBattleCutsceneDialogueBasic('#Found ' + string(Gold) + ' gold coins.^@ ');
            Gold = 0;
        }
        else{
            with(BattleCutsceneDialogueControler){//remove the dialogue
                instance_destroy();
            }
            //fade out
            CreateScreenFade(c_black,0,1,.025,'out',self.id);
        }
    
    //MUSIC//
    
    
    
    
    
    
    
    
    
    
    break;
  }
}   














    
