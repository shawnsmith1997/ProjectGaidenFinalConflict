//Starts the battle cutscene

//Starts the battle cutscene

var CurrentCharacter, CurrentTarget, Action, Spell, SpellLevel;

CurrentCharacter = argument0;
CurrentTarget = argument1;
Action = argument2;
//Spell = argument3;
//SpellLevel = argument4;

global.Tile = CalculateGlobalTile(CurrentCharacter, CurrentTarget, Action);

instance_create(0,0,BattleCutsceneControler);
//BattleCutsceneControler.Spell = CurrentCharacter.Spells[Spell];
//BattleCutsceneControler.SpellLevel = SpellLevel;

//=================
//Controler Setup==
//=================   
//Create the Character Controler
if(CurrentCharacter.GuyType = 'player'){//do we make a player or enemy controler
    BattleCutsceneControler.CurrentCharacter[0] = instance_create(0,0,BattleCutscenePlayerControler);
    if ((CurrentTarget.ID = 1027) or CurrentTarget.ID = 1028){
        global.Battle13Water = 1;
    } 
}
else{
    BattleCutsceneControler.CurrentCharacter[0] = instance_create(0,0,BattleCutsceneEnemyControler);
    if ((CurrentCharacter.ID = 1027) or CurrentCharacter.ID = 1028){
        global.Battle13Water = 1;
    } 
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

//Find all targets.
if(CurrentTarget.GuyType = 'player'){
    FindAttackRange(instance_position(round(CurrentTarget.x), round(CurrentTarget.y), objCell),Get_Battle_Stat_Total(CurrentCharacter,'AttackArea')-1,-1,1);
}
else if(CurrentTarget.GuyType = 'enemy'){
    FindAttackRange(instance_position(round(CurrentTarget.x), round(CurrentTarget.y), objCell),Get_Battle_Stat_Total(CurrentCharacter,'AttackArea')-1,-1,2);
}
BattleCutsceneControler.NumberOfTargets = Cursor.NumberOfTargets;//calculate number of targets

//Now create the target(s)
var index;//loop and create 
for(index = 0; index < Cursor.NumberOfTargets; index +=1){
    if(Cursor.AttackList[index] != CurrentCharacter){//Same guy so dont bother making a controler
        CurrentTarget = Cursor.AttackList[index];//the target being looked at right now
        if(CurrentTarget.GuyType = 'player'){//Do we make a player or enemy controler
            BattleCutsceneControler.CurrentTarget[index] = instance_create(0,0,BattleCutscenePlayerControler);
        }
        else{
            BattleCutsceneControler.CurrentTarget[index] = instance_create(0,0,BattleCutsceneEnemyControler);
        }
        BattleCutsceneControler.CurrentTarget[index].Character = Cursor.AttackList[index];//assign character to the controler
        BattleCutsceneControler.CurrentTarget[index].DisplayType = 'Target';
        BattleCutsceneControler.CurrentTarget[index].sprite_index = Get_Battle_Cutscene_Character_Sprite(BattleCutsceneControler.CurrentTarget[index].Character.ID, 'Idle');
        BattleCutsceneControler.CurrentTarget[index].image_speed = Get_Battle_Cutscene_Anim_Speed(BattleCutsceneControler.CurrentTarget[index].Character.ID, BattleCutsceneControler.CurrentTarget[index].image_number);
    }
    else{//else, the caster targeted himself, re-use the other controler
        BattleCutsceneControler.CurrentTarget[index] = BattleCutsceneControler.CurrentCharacter[0];
    }
}

//if the target is not the caster, display the HUD
if(BattleCutsceneControler.CurrentTarget[0] != BattleCutsceneControler.CurrentCharacter[0]){
    with(BattleCutsceneControler.CurrentTarget[0]){
        //Character = CurrentTarget;
        DisplayType = 'Target';
        CreateBattleHUD(Character, "target");
    }
}
//========
//Magic ==
//========
//if(Action = 'Magic'){
    //set up the controler
    BattleCutsceneControler.CurrentCharacter[0].visible = true;//in case it was flagged off earlier
    BattleCutsceneControler.CurrentCharacter[0].DisplayHUD = true;//display the attackee's HUD
    BattleCutsceneControler.PanDirection = 'Start';
    BattleCutsceneControler.State = 0;
    //BattleCutsceneControler.Action = 'Magic';
    BattleCutsceneControler.Action = 'Attack';
    BattleCutsceneControler.Attacker = BattleCutsceneControler.CurrentCharacter[0];;
    BattleCutsceneControler.Reciever = BattleCutsceneControler.CurrentTarget[0];
    BattleCutsceneControler.NextCharacter = BattleCutsceneControler.CurrentTarget[0];
    
    //Dont display HUD if we have to pan the camera (not next to, not same guy type, not targeting self)
    CurrentTarget = Cursor.AttackList[0];
    if((Find_Distance(CurrentCharacter.x,CurrentCharacter.y,CurrentTarget.x,CurrentTarget.y) <= 1)&&((CurrentCharacter.GuyType != CurrentTarget.GuyType)||(CurrentCharacter = CurrentTarget))){
        BattleCutsceneControler.CurrentTarget[0].DisplayHUD = true;//display target HUD
        BattleCutsceneControler.CurrentTarget[0].visible = true; //target is visible
    }
//}
ScreenFade(0, .04, 'in', -1);//fade into battle cutscene





/*
var CurrentCharacter, CurrentTarget, Action;

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

//Create the Target Controler 
if(CurrentTarget != CurrentCharacter){//Same guy so dont bother making a controler
    //CurrentTarget = Cursor.AttackList[0];//the target being looked at right now//un comment when adding splash damage
    if(CurrentTarget.GuyType = 'player'){//Do we make a player or enemy controler
        BattleCutsceneControler.CurrentTarget[0] = instance_create(0,0,BattleCutscenePlayerControler);
    }
    else{
        BattleCutsceneControler.CurrentTarget[0] = instance_create(0,0,BattleCutsceneEnemyControler);
    }
    //set up controler
    with(BattleCutsceneControler.CurrentTarget[0]){
        Character = CurrentTarget;
        DisplayType = 'Target';
        CreateBattleHUD(Character, "target");
        sprite_index = Get_Battle_Cutscene_Character_Sprite(BattleCutsceneControler.CurrentTarget[0].Character.ID, 'Idle');
        image_speed = Get_Battle_Cutscene_Anim_Speed(BattleCutsceneControler.CurrentTarget[0].Character.ID, BattleCutsceneControler.CurrentTarget[0].image_number);
    }
}
else{//else, set target equal to the other controler
    BattleCutsceneControler.CurrentTarget[0] = BattleCutsceneControler.CurrentCharacter[0];
}
//========
//Attack==
//========
if(Action = 'Attack'){
    //Tests for if we have to pan the camera or not (if not directly next to and not the same GuyType or character targeted themselves)
    if((Find_Distance(CurrentCharacter.x,CurrentCharacter.y,CurrentTarget.x,CurrentTarget.y) <= 1)&&((CurrentCharacter.GuyType != CurrentTarget.GuyType)||(CurrentCharacter = CurrentTarget))){
        BattleCutsceneControler.CurrentTarget[0].DisplayHUD = true;//display target HUD
        BattleCutsceneControler.CurrentTarget[0].visible = true; //target is visible
    }
    //set up the controler
    BattleCutsceneControler.PanDirection = 'Start';
    BattleCutsceneControler.State = 0;
    BattleCutsceneControler.Action = 'Attack';
    BattleCutsceneControler.Attacker = BattleCutsceneControler.CurrentCharacter[0];;
    BattleCutsceneControler.Reciever = BattleCutsceneControler.CurrentTarget[0];
    BattleCutsceneControler.NextCharacter = BattleCutsceneControler.CurrentTarget[0];
}

ScreenFade(0, .04, 'in', -1);//fade into battle cutscene

*/
