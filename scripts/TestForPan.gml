//checks if we need to pan the camera and sets up the pan accordingly
//NextCharacter;//who's the next guy we need to target?

var PlayerDirection, EnemyDirection, OnScreen;
PlayerDirection = 'none';//figure out who is on screen and where
EnemyDirection = 'none';//figure out who is on screen and where
OnScreen = false;//if the next character is already on the screen

//remember the characters that will be panning
BattleCutsceneControler.PlayerPanReference = 'none';
BattleCutsceneControler.EnemyPanReference = 'none';

with(BattleCutscenePlayerControler){
    if(visible){
        if(FaceDirection = 'Normal'){
            PlayerDirection = 'Normal';
        }
        else if(FaceDirection = 'Alt'){
            PlayerDirection = 'Alt';
        }
        BattleCutsceneControler.PlayerPanReference = self.id;//remember this character
        if(self.id = BattleCutsceneControler.NextCharacter){
            OnScreen = true;
        }
    }
}
with(BattleCutsceneEnemyControler){
    if(visible){
        if(FaceDirection = 'Normal'){
            EnemyDirection = 'Normal';
        }
        else if(FaceDirection = 'Alt'){
            EnemyDirection = 'Alt';
        }
        BattleCutsceneControler.EnemyPanReference = self.id;//remember this character
        if(self.id = BattleCutsceneControler.NextCharacter){
            OnScreen = true;
        }
    }
}

//=========================
//figure out what pan to do
//=========================
if(OnScreen){//no need to pan, character already on screen
    return false;//we dont have to pan
}
    
//Both player and enemy are on screen.
else{
    if((PlayerDirection = 'Normal')&&(EnemyDirection = 'Normal')){
        //goto enemy
        if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'enemy'){//further test attack, item, magic
            PanType = 'Pan_EtE_GlobalLeft';//should really test for magic, but eh, no need atm.
        }
        //goto player
        else if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'player'){
            PanType = 'Pan_PtP_GlobalLeft';
        }
    }

    //if enemy is not on screen, player in normal position
    else if((PlayerDirection = 'Normal')&&(EnemyDirection = 'none')){
        //goto enemy
        if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'enemy'){//further test attack, item, magic
            PanType = 'Ranged_PtE';
        }
        //goto player
        else if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'player'){
            if(Attacker.Character.GuyType = 'player'){//if something broke, this is why!===================FIXY!
                PanType = 'Pan_PtP_Out_InAlt';//PanType = 'Ranged_EtP';//uh, i dont think this should be here...
            }
            else{//enemy
                PanType = 'Pan_PtP_GlobalRight';//=======================================FIX SOMEHOW!
            }
        }
    }
    
    //if enemy is in normal position, player not on screen
    else if((PlayerDirection = 'none')&&(EnemyDirection = 'Normal')){
        //goto enemy
        if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'enemy'){//further test attack, item, magic
            PanType = 'Pan_EtE_GlobalLeft';//added for laser eye, hope this works!
        }
        //goto player
        else if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'player'){
            PanType = 'Ranged_EtP';
            
        }
        else{
                PanType = 'Pan_PtP_OutAlt_InAlt';
            }
    }
    
    //if enemy is not on screen, player in Alt position
    else if((PlayerDirection = 'Alt')&&(EnemyDirection = 'none')){
        //goto enemy
        if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'enemy'){//further test attack, item, magic
        }
        //goto player
        else if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'player'){
            if(BattleCutsceneControler.ReturnToAttacker){
                PanType = 'Pan_PtP_OutAlt_In';
            }
            else{
                PanType = 'Pan_PtP_OutAlt_InAlt';
            }
        }
    }
    
    //if enemy is in Alt position, player not on screen
    /*
    else if((PlayerDirection = 'none')&&(EnemyDirection = 'Alt')){
        //goto enemy
        if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'enemy'){//further test attack, item, magic
            
        }
        //goto player
        else if(BattleCutsceneControler.NextCharacter.Character.GuyType = 'player'){
            PanType = 'Ranged_EtP';
        }
    }*/
    return true;//we have to pan
}



