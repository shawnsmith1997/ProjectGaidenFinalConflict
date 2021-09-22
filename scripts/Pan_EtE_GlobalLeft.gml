//panning from player to enemy

/*
var Attacker, Reciever;
Attacker = CurrentCharacter[CharacterIndex];
Reciever = CurrentTarget[TargetIndex];  
*/



switch (PanState){
case 0:
    EnemyPanReference.DisplayHUD = false; //current guy on screen, pan out
    EnemyPanReference.PanDirection = 'GlobalLeftAlt';
    
    PanDirection = 'GlobalLeft';//scene pan
    
    NextCharacter.Pan = -512;//pan next guy in
    NextCharacter.visible = true;
    NextCharacter.PanDirection = 'GlobalLeft';
    NextCharacter.FaceDirection = 'Normal';
    //PanDirection = 'GlobalLeft';
    NextCharacter.State = 'none';
    NextCharacter.CallPanScript = true;
    with(NextCharacter){
        event_perform(ev_other,ev_user0);
    }
    PanState += 1;
    break;
    
case 1:
    PanType = 'none';
    PanState = 0;
    EnemyPanReference.visible = false;
    NextCharacter.CallPanScript = false;
    with(NextCharacter){//Create battle HUD
        event_perform(ev_other,ev_user1);
    }
    NextCharacter.DisplayHUD = true;
    event_perform(ev_other,ev_user0);
    break;
}