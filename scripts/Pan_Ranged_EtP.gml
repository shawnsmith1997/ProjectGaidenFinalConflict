//panning from enemy to player
switch (PanState){
case 0:
    EnemyPanReference.DisplayHUD = false; //Dont display attackee HUD
    EnemyPanReference.PanDirection = 'Out';
    EnemyPanReference.CallPanScript = true;
    PanState += 1;
    break;

case 1:
    NextCharacter.Pan = 512;
    NextCharacter.visible = true;
    NextCharacter.PanDirection = 'GlobalRight';
    NextCharacter.FaceDirection = 'Normal';
    PanDirection = 'GlobalRight';
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
    EnemyPanReference.visible = false;
    EnemyPanReference.CallPanScript = false;
    NextCharacter.CallPanScript = false;
    with(NextCharacter){//Create battle HUD
        event_perform(ev_other,ev_user1);
    }
    NextCharacter.DisplayHUD = true;
    event_perform(ev_other,ev_user0);
    break;
}