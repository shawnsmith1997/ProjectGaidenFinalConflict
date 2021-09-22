//Starts the battle cutscene

var CurrentCharacter, CurrentTarget, Action;//, Spell, SpellLevel;

CurrentCharacter = argument0;
CurrentTarget = argument1;
Action = argument2;

instance_create(0,0,BattleCutsceneControler);

//=================
//Controler Setup==
//=================   
//Create the Character Controler
if(CurrentCharacter.GuyType = 'player'){//do we make a player or enemy controler
    BattleCutsceneControler.CurrentCharacter[0] = instance_create(0,0,BattleCutscenePlayerControler);
}
else{
    BattleCutsceneControler.CurrentCharacter[0] = instance_create(0,0,BattleCutsceneEnemyControler);
}
//Set up the above controler
with(BattleCutsceneControler.CurrentCharacter[0]){
    Character = CurrentCharacter;
    DisplayType = 'Main';
    CreateBattleHUD(Character, "main");
    visible = true;
    DisplayHUD = true;//display the attackee's HUD
    sprite_index = Get_Battle_Cutscene_Character_Sprite(BattleCutsceneControler.CurrentCharacter[0].Character.ID, 'Idle');
    image_speed = Get_Battle_Cutscene_Anim_Speed(BattleCutsceneControler.CurrentCharacter[0].Character.ID, BattleCutsceneControler.CurrentCharacter[0].image_number);
}

if(Action = 'LaserEye'){
    //set up the controler
    BattleCutsceneControler.CurrentCharacter[0].visible = true;//in case it was flagged off earlier
    BattleCutsceneControler.CurrentCharacter[0].DisplayHUD = true;//display the attackee's HUD
    BattleCutsceneControler.PanDirection = 'Start';
    BattleCutsceneControler.State = 0;
    BattleCutsceneControler.Action = 'PrimeLaserEye';
    BattleCutsceneControler.Attacker = BattleCutsceneControler.CurrentCharacter[0];;
    BattleCutsceneControler.Reciever = BattleCutsceneControler.CurrentTarget[0];
    BattleCutsceneControler.NextCharacter = BattleCutsceneControler.CurrentTarget[0];
}
ScreenFade(0, .04, 'in', -1);//fade into battle cutscene