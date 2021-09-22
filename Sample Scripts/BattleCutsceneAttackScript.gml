switch (State){
//=====================
//Start Attack Sequence
//=====================
case 0:
    if (Attacker.Character.GuyType = 'player'){
        global.PanEnemy = 0;
    }
    else {
        global.PanEnemy = 1;
    }
    DoubleAttack = Test_Double_Attack(Attacker.Character);//test for double attack
    Counter = (((CanAttackTarget(instance_position(round(Reciever.Character.x), round(Reciever.Character.y), objCell),Get_Battle_Stat_Total(Reciever.Character,'AttackRange'),Get_Battle_Stat_Total(Reciever.Character,'AttackLimit'),3, Attacker.Character)))&&(Test_Counter_Attack(Reciever.Character)));//test if the target counters the attack
    //DoubleAttack = true; //debugly stuff
    //Counter = true;
    CreateBattleDialogueBasic(WordWrap(string(Attacker.Character.Name)+' Attacks!^@ ',200,'#',false), self.id);
    State = 10;//Perform attack animation
    break;
//========================
//Perform Attack Animation
//========================
case 10:
    with(BattleCutsceneDialogueControler){//remove the dialogue
        instance_destroy();
    }
    //Have character perform attack animation
    with(Attacker){
        State = 'Attack';//Tell the character what animation to perform
        event_perform(ev_other,ev_user0);//user 0 starts the correct animation
    }
    if (Attacker.Character.GuyType = 'player'){
      if(Attacker.Character.Cursed == 1){
        if(Test_Curse(Attacker.Character)){     
            Attacker.State = 'EndAttackAnimation';  
            sound_play(MissSound);
            State = 31;
        }
        else{
            State = 20;
        }
        if(Attacker.Character.GuyType = 'player'){//add XP only if the player does damage
            EXP += 1;//1 xp for missing
        } 
         
     }
     else {
        State = 20;
     }      
    }
    else{
      State = 20;//test for pan (Ranged attack)
    }
    break;
//================
//End Attack Swing
//================
case 20:
    State = 30;//test for block
    if(TestForPan()){
        PanBattleCutscene();
        if (Attacker.Character.GuyType = 'player'){
            global.PanEnemy = 1;
        }
        else {
            global.PanEnemy = 0;
        }
    }
    else{
        event_perform(ev_other,ev_user0);
    }
    break;
//==============
//Test For Block
//==============  
case 30:
    //Reciever.DisplayHUD = true; //Display target HUD
    if(Test_Block(Reciever.Character)){//test for block
        //play block animation
        with(Reciever){
            State = 'Block';//animation to perform
            //State = 'SpellCastEnd';//animation to perform
            event_perform(ev_other,ev_user0);//start animation
            sound_play(MissSound);
        }
        if(Attacker.Character.GuyType = 'player'){//add XP only if the player does damage
            EXP += 1;//1 xp for missing
        }
        State = 40; //display block message
        //event_perform(ev_other,ev_user0);
    }
    else{//didnt block, play hit animation
        State = 60;//Hit animation
        event_perform(ev_other,ev_user0);
    }
    break;

//=====================
//Display Curse Message
//=====================
case 31:
    CreateBattleDialogueBasic(WordWrap(string(Attacker.Character.Name) + ' is Cursed!^@',200,'#',false), self.id);
    State = 32;//end block animation
    break;

case 32:
    with(BattleCutsceneDialogueControler){//remove the dialogue
        instance_destroy();
    }
        State = 33;//End Battle Phase
        //PanBattleCutscene();
        Attacker.Character.Health -= 3;//damage character
        event_perform(ev_other,ev_user0);
    break;
    
case 33:
    CreateBattleDialogueBasic(WordWrap(string(Attacker.Character.Name) + ' takes 3 damage from the curse!',200,'#',false), self.id);
    with(Attacker){
        event_perform(ev_other,ev_user1);//Update HUD 
        Hit = 3;//play hit animation
        HitFlash = 0;
        State = 'Hit';
        sound_play(HitSound);
    }
    //Attacker.Character.Health -= 3;//damage character
    State = 34;//end block animation
    break; 
case 34:
    AppendBattleCutsceneDialogueBasic(WordWrap('#'+string(Reciever.Character.Name)+' takes 3 damage from the curse',200,'#',false));
    if(Attacker.Character.Health <= 0){//if they die
        Attacker.Character.Dead = true;//Flag character as dead
        Attacker.Character.Health = 0;//set health to 0
        BattleControler.Deaths +=1;//number of deaths increases
        if(Attacker.Character.GuyType = 'player'){//update deaths (if player died)
            global.IsDead[Attacker.Character.ID] = true;//globally flag as dead.
            Attacker.Character.Defeats += 1;
        }
    }
    State = 120;//end block animation
    event_perform(ev_other,ev_user0);
    break;           

 //=====================
//Display Block Message
//=====================
case 40:
    CreateBattleDialogueBasic(WordWrap(string(Reciever.Character.Name) + ' blocked the attack!^@',200,'#',false), self.id);
    State = 50;//end block animation
    break;   
    

//===================
//End Block Animation
//===================
case 50:
    with(BattleCutsceneDialogueControler){//remove the dialogue
        instance_destroy();
    }
    with(Reciever){
        State = 'EndBlockAnimation';//play end block animation
        event_perform(ev_other,ev_user0);//start the animation
    }
    State = 80;//test for pan / counter / ect.
    break;
//==================
//Play Hit Animation
//==================
case 60:
    myBuffer = 4;
    //the noob didnt block... play hit animation and take damage.
    //==============Comment this out if you decide to switch to crit all units in AOE case
    if(Test_Critical_Hit(Attacker.Character)){//Did we get a critical hit?
        Critical = 1;
        sound_play(CriticalSound);
    }
    else{
        Critical = 0;
    }//============
    
    Damage = Calculate_Battle_Damage(Attacker.Character,Reciever.Character,Critical,CounterDamageFlag); 
    if(Damage <= 0){//minimum damage is 1.
        Damage = 1;
    }
    Reciever.Character.Health -= Damage;//damage character
    
    if(Reciever.Character.Health <= 0){//if they die
        Reciever.Character.Dead = true;//Flag character as dead
        Reciever.Character.Health = 0;//set health to 0
        BattleControler.Deaths +=1;//number of deaths increases
        if(Attacker.Character.GuyType = 'player'){//update kills (if enemy died)
            Attacker.Character.Kills += 1;
        }
        if(Reciever.Character.GuyType = 'player'){//update deaths (if player died)
            global.IsDead[Reciever.Character.ID] = true;//globally flag as dead.
            Reciever.Character.Defeats += 1;
        }
    }
    if (Attacker.Character.GuyType = 'player'){
        if(Attacker.Character.Cursed == 1){
        State = 65; //display hit message
            Attacker.Character.Health -= 3;   
            with(Attacker){
                event_perform(ev_other,ev_user1);//Update HUD 
                Hit = 10;//play hit animation
                HitFlash = 1;
                State = 'Hit';
            } 
        }
        else{
            State = 70;
        }
    }
    else{
     State = 70; //display hit message
    }    
    with(Reciever){
        event_perform(ev_other,ev_user1);//Update HUD 
        Hit = 10;//play hit animation
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
    break;
//===================
//Display Hit Message
//===================

case 65:
    State = 70;
break;

case 70:
    if(Critical){//if criticalmessage
        CreateBattleDialogueBasic(WordWrap('Critical Hit!#' + string(Reciever.Character.Name) + ' took ' + string(Damage) + '  Damage!',200,'#',false), self.id);
    }
    else{//otherwise normal message
        CreateBattleDialogueBasic(WordWrap(string(Reciever.Character.Name) + ' took ' + string(Damage) + '  Damage!',200,'#',false), self.id);
    }
    if (Attacker.Character.GuyType = 'player'){
        if(Attacker.Character.Cursed == 1){
            AppendBattleCutsceneDialogueBasic(WordWrap('#'+string(Attacker.Character.Name)+' takes 3 damage from the curse!',200,'#',false));
            if(Attacker.Character.Health <= 0){//if they die
                Attacker.Character.Dead = true;//Flag character as dead
                Attacker.Character.Health = 0;//set health to 0
                BattleControler.Deaths +=1;//number of deaths increases
                if(Attacker.Character.GuyType = 'player'){//update deaths (if player died)
                    global.IsDead[Attacker.Character.ID] = true;//globally flag as dead.
                    Attacker.Character.Defeats += 1;
                }
            }        
        }
    }
    if(Reciever.Character.Health <= 0){//if target is dead, append death message
        AppendBattleCutsceneDialogueBasic(WordWrap('#'+string(Reciever.Character.Name)+' was defeated.',200,'#',false));
        Reciever.Dead = true;//Play death animation (This is put here so it plays AFTER the hit animation)
        //Reciever.Character.Dead = true;//Flag character as dead
        if((Attacker.Character.GuyType = 'player') && (Attacker.Character.GuyType != Reciever.Character.GuyType)){//if the player is not attacking its allies
            Gold += Reciever.Character.Gold;//reward gold
        }
    }
    else if (Attacker.Character.canPoison = 1){
        if(Test_Curse(Attacker.Character)){
            Reciever.Character.Poisoned = 1;
            AppendBattleCutsceneDialogueBasic(WordWrap('#'+string(Reciever.Character.Name)+' was poisoned.',200,'#',false));
        }
    }
    //Append any status effects
    else{
        if((Critical && global.LegacyStatusEffect &&(HasStatusHit(Attacker.Character)))||(!global.LegacyStatusEffect)){//Append Status ailments. If legacy mode, can only be done on crit.
            AppendBattleCutsceneDialogueBasic(ApplyBattleCutsceneStatusEffects(Attacker.Character,Reciever.Character));
        }
    }
    
    AppendBattleCutsceneDialogueBasic('^@ ');//add delay and action call to the message
    State = 80;//continue cutscene
    break;
//=================
//Continue Cutscene
//=================

case 80:
    
    with(BattleCutsceneDialogueControler){//remove the dialogue
        instance_destroy();
    }
    if(TargetIndex < (NumberOfTargets -1)){//if there are more targets
        ReturnToAttacker = false;
        //cycle through the rest of the targets
        //make sure to test if dead before attacking them in case of double attack
        TargetIndex +=1;
        NextCharacter = CurrentTarget[TargetIndex];
        Reciever = NextCharacter;
        State = 20;//post delay
        event_perform(ev_other,ev_user0);
    }
    else{//if original attacker isnt dead (in case of hitting themselves, curse, ect)
        ReturnToAttacker = true;
        global.PanEnemy = 0;
        if((DoubleAttack)&&(!CurrentTarget[0].Dead)){
            NextCharacter = Attacker;//Pan to attacker (if not already on them)
            if(TestForPan()){
                State = 90;//Double Attack Message
                PanBattleCutscene();
            }
            else{
                State = 100;//End Attack Animation
                event_perform(ev_other,ev_user0);
            }
        }
        else if((Counter)&&(!CurrentTarget[0].Dead)){
            NextCharacter = CurrentTarget[0];//to pan to
            if(TestForPan()){
                State = 110;//Counter Attack Message
                PanBattleCutscene();
            }
            else{
                State = 100;//End Attack Animation
                event_perform(ev_other,ev_user0);
            }
        }
        else{//done with battle cutscene
            NextCharacter = CurrentCharacter[0];//Pan to original character
            if(TestForPan()){
                State = 120;//End Battle Phase
                PanBattleCutscene();
            }
            else{
                State = 100;//End Attack Animation
                event_perform(ev_other,ev_user0);
            }
        }
    }
    break;
//=====================
//Double / Counter test
//=====================
case 90://
    Attacker.DisplayHUD = true; //Display target HUD
    
    if (Attacker.Character.GuyType = 'player'){
        global.PanEnemy = 0;
    }
    else {
        global.PanEnemy = 1;
    }
    
    if((DoubleAttack)&&(!CurrentTarget[0].Dead)){//if double attack and the target isnt dead
        DoubleAttack = false;//so we dont infinitely attack
        TargetIndex = 0;//reset target index
        Reciever = CurrentTarget[0];//reciever is now the initial target
        NextCharacter = Reciever;
        
        if (Attacker.Character.GuyType = 'player'){
            global.PanEnemy = 0;
        }
        else {
            global.PanEnemy = 1;
        }
        
        CreateBattleDialogueBasic(WordWrap(string(CurrentCharacter[CharacterIndex].Character.Name)+' Attacks again!^@ ',200,'#',false), self.id);
        State = 10;//start the battle cycle over again.
    }
    else if((Counter)&&(!CurrentTarget[0].Dead)){
        NextCharacter = CurrentTarget[0];//to pan to
        if(TestForPan()){
            State = 110;//Counter Attack Message
            PanBattleCutscene();
        }
        else{
            State = 110;//Counter Attack Message
            event_perform(ev_other,ev_user0);
        }
    }
    else{
        State = 120;//End Battle Phase
        event_perform(ev_other,ev_user0);
    }
    break;
//====================
//End Attack Animation
//====================
case 100://end attack animation
    Attacker.State = 'EndAttackAnimation';
    with(Attacker){
        event_perform(ev_other,ev_user0);
    }
    State = 90;//double / counter / end test
    break;
//======================
//Counter Attack Message
//======================
case 110://counter attack message
    Counter = false;
    CounterDamageFlag = true;//halves the damage output
    Attacker = CurrentTarget[0];
    Reciever = CurrentCharacter[0];
    NextCharacter = Reciever;
    CreateBattleDialogueBasic(WordWrap(string(Attacker.Character.Name)+' Counters!^@ ',200,'#',false), self.id);
    State = 10;//Enter Battle Loop Again, this time with counter attack.
    break;
//================
//End Battle Phase
//================    
case 120:
    if (Attacker.Character.GuyType = 'player'){
        global.PanEnemy = 0;
    }
    else {
        global.PanEnemy = 1;
    }
    State = 130;//Level Up (if we get there)
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
    else{//no xp for you (Non player attacked)
        State = -1;//No state, end cutscene
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    break;
//========
//Level Up 
//========
case 130:
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
    
    
    
    
    
    
    
    }
    break;
}

//============
//Recieve Gold
//============
