switch(State){
case 0:
    switch (Attacker.Character.Countdown){
    //====================
    //Start Magic Sequence
    //====================
    case 5:
        CreateBattleDialogueBasic(WordWrap('Countdown sequence initiated. 10... 9...^^@ ',200,'#',false), self.id);
        State = 70;//Perform Spell Cast animation
        break;
    //==========================
    //Start Spell Cast Animation
    //==========================
    case 4:
        CreateBattleDialogueBasic(WordWrap('8... 7...^^@ ',200,'#',false), self.id);
        State = 70;//Perform Spell Cast animation
        break;    
    //==========
    //Fire Blast
    //==========
    case 3://after attack animation (not currently called but can be made to play sound ect)
        CreateBattleDialogueBasic(WordWrap('6... 5...^^@ ',200,'#',false), self.id);
        State = 70;//Perform Spell Cast animation
        break;
    //===========
    //Start Spell
    //=========== 
    case 2:
        CreateBattleDialogueBasic(WordWrap('4... 3...^^@ ',200,'#',false), self.id);
        State = 70;//Perform Spell Cast animation
        break;
    //==========
    //Post Delay
    //==========
    case 1:
        CreateBattleDialogueBasic(WordWrap('2... 1...^^@ ',200,'#',false), self.id);
        State = 70;//Perform Spell Cast animation
        break;
    }
break;
//=================
//Continue Cutscene
//=================
case 70:
    with(BattleCutsceneDialogueControler){//remove the dialogue
        instance_destroy();
    }
    State = 90;//End Battle Phase
    event_perform(ev_other,ev_user0);
        
    break;
//================
//End Battle Phase
//================    
case 90:
    Attacker.Character.Countdown -= 1;//countdown
    State = -1;//No state, end cutscene
    CreateScreenFade(c_black,0,1,.025,'out',self.id);
    break;
}