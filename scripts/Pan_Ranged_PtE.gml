//panning from player to enemy

/*
var Attacker, Reciever;
Attacker = CurrentCharacter[CharacterIndex];
Reciever = CurrentTarget[TargetIndex];  
*/



switch (PanState){
case 0:
    PlayerPanReference.DisplayHUD = false; //Dont display attackee HUD
    PlayerPanReference.PanDirection = 'Out';
    PlayerPanReference.CallPanScript = true;
    PanState += 1;
    break;

case 1:
    NextCharacter.Pan = -512;
    NextCharacter.visible = true;
    NextCharacter.PanDirection = 'GlobalLeft';
    NextCharacter.FaceDirection = 'Normal';
    PanDirection = 'GlobalLeft';
    NextCharacter.State = 'none';
    NextCharacter.CallPanScript = true;
    with(NextCharacter){
        event_perform(ev_other,ev_user0);
    }
    PanState += 1;
    break;
    
case 2:
    PanType = 'none';
    PanState = 0;
    PlayerPanReference.visible = false;
    PlayerPanReference.CallPanScript = false;
    NextCharacter.CallPanScript = false;
    with(NextCharacter){//Create battle HUD
        event_perform(ev_other,ev_user1);
    }
    NextCharacter.DisplayHUD = true;
    event_perform(ev_other,ev_user0);
    break;
}