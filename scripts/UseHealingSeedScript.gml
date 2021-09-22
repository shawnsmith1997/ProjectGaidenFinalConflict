switch (State){
//===================
//Start Item Sequence
//===================
case 0:
    CreateBattleDialogueBasic(WordWrap(string(Attacker.Character.Name) +' uses the ' + 'Healing Seed' + '!^@ ',200,'#',false), self.id);
    State = 10;//Perform Item Use animation
    break;
//========================
//Start Item Use Animation
//========================
case 10:
    with(BattleCutsceneDialogueControler){//remove the dialogue
        instance_destroy();
    }
    //Have character perform attack animation
    with(Attacker){
        State = 'ItemUse';//Tell the character what animation to perform
        event_perform(ev_other,ev_user0);//user 0 starts the correct animation
    }
    State = 40;//Use Item
    break;    
case 40:
    State = 50;//Heal Target
    if(TestForPan()){
        PanBattleCutscene();
    }
    else{
        event_perform(ev_other,ev_user0);
    }
    break;
//===========
//Heal Target
//===========
case 50:
    State = 60;//Display Hit Message
    Damage = Get_Spell_Stats(Spell,SpellLevel,'Damage');
    if(Damage > (Reciever.Character.MaxHealth - Reciever.Character.Health)){
        Damage = (Reciever.Character.MaxHealth - Reciever.Character.Health);
    }
    Reciever.Character.Health += Damage;//Damage wont go over maxHP, no need to test a second time
    HighestZ = 25;
    EXP += Calculate_EXP(25,Damage,Reciever.Character.MaxHealth,10,false)//Z,D,M,Min,Bonus
    with(Reciever){
        event_perform(ev_other,ev_user1);
        sound_play(HealSound);
    }
    event_perform(ev_other,ev_user0);
    //alarm[0] = 30;//delay for 1/2 second.
    
    break;
//===================
//Display Hit Message
//===================
case 60:
    CreateBattleDialogueBasic(WordWrap(string(Reciever.Character.Name) + ' regained ' + string(Damage) + '  Health! ',200,'#',false), self.id);
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
    
    break;
//======================
//End Item Use Animation
//======================
case 80:
    Attacker.State = 'EndItemUseAnimation';
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
        with(BattleCutsceneDialogueControler){//remove the dialogue
            instance_destroy();
        }
        //fade out
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    break;
}















    
