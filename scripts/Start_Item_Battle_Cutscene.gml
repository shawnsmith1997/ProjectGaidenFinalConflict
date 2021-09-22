//Starts the battle cutscene

var CurrentCharacter, CurrentTarget, Action, Item, ItemSlot;

CurrentCharacter = argument0;
CurrentTarget = argument1;
Action = argument2;
Item = argument3;
ItemSlot = argument4;

global.Tile = CalculateGlobalTile(CurrentCharacter, CurrentTarget, Action);

instance_create(0,0,BattleCutsceneControler);
BattleCutsceneControler.Item = Item;
BattleCutsceneControler.ItemSlot = ItemSlot;

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

//Find all targets.

FindAttackRange(instance_position(round(CurrentTarget.x), round(CurrentTarget.y), objCell),Get_Effect_Stats(Get_Item_Stats(Item,'Effect'),1)-1,-1,FixSpellTarget(Get_Effect_Stats(Get_Item_Stats(Item,'Effect'),3),CurrentCharacter.GuyType));
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
if(Action = 'Item'){
    if((Item = 204)){
        Delete_Item_Battle(CurrentCharacter, ItemSlot);
        UseAngelWingBattle();
    }
        if((Item = 60)){
        GetCursorSprite(2);
    }
    //set up the controler
    BattleCutsceneControler.CurrentCharacter[0].visible = true;//in case it was flagged off earlier
    BattleCutsceneControler.CurrentCharacter[0].DisplayHUD = true;//display the attackee's HUD
    BattleCutsceneControler.PanDirection = 'Start';
    BattleCutsceneControler.State = 0;
    BattleCutsceneControler.Action = 'Item';
    BattleCutsceneControler.Attacker = BattleCutsceneControler.CurrentCharacter[0];;
    BattleCutsceneControler.Reciever = BattleCutsceneControler.CurrentTarget[0];
    BattleCutsceneControler.NextCharacter = BattleCutsceneControler.CurrentTarget[0];
    
    //Dont display HUD if we have to pan the camera
    if(BattleCutsceneControler.Attacker.Character.GuyType != BattleCutsceneControler.Reciever.Character.GuyType){
        BattleCutsceneControler.CurrentTarget[0].DisplayHUD = true;
        BattleCutsceneControler.CurrentTarget[0].visible = true;
    }
}
ScreenFade(0, .04, 'in', -1);//fade into battle cutscene














/*





//Starts the battle cutscene

var CurrentCharacter, CurrentTarget, Action, Item, ItemSlot;

CurrentCharacter = argument0;
CurrentTarget = argument1;
Action = argument2;
Item = argument3;
ItemSlot = argument4;

instance_create(0,0,BattleCutsceneControler);
BattleCutsceneControler.Item = Item;
BattleCutsceneControler.ItemSlot = ItemSlot;

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
}

//Create the Target Controler(s)  Get_Spell_Stats(CurrentCharacter.Spells[Spell],SpellLevel,6)
FindAttackRange(instance_position(round(CurrentTarget.x), round(CurrentTarget.y), objCell),Get_Effect_Stats(Get_Item_Stats(Item,16),1)-1,-1,FixSpellTarget(Get_Effect_Stats(Get_Item_Stats(Item,16),3),CurrentCharacter.GuyType));
BattleCutsceneControler.NumberOfTargets = Cursor.NumberOfTargets;//calculate number of targets

var index;//loop and create 
for(index = 0; index < Cursor.NumberOfTargets; index +=1){
    if(Cursor.AttackList[index] != CurrentCharacter){//Same guy so dont bother making a controler
        if(CurrentTarget.GuyType = 'player'){//Do we make a player or enemy controler
            BattleCutsceneControler.CurrentTarget[index] = instance_create(0,0,BattleCutscenePlayerControler);
        }
        else{
            BattleCutsceneControler.CurrentTarget[index] = instance_create(0,0,BattleCutsceneEnemyControler);
        }
        BattleCutsceneControler.CurrentTarget[index].Character = Cursor.AttackList[index];//assign character to the controler
        BattleCutsceneControler.CurrentTarget[index].DisplayType = 'Target';
    }
    else{//else, the caster targeted himself, re-use the other controler
        BattleCutsceneControler.CurrentTarget[index] = BattleCutsceneControler.CurrentCharacter[0];
    }
    BattleCutsceneControler.CurrentTarget[index].visible = false; //Make every target invisible
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
//Item ==
//========
if(Action = 'Item'){
    //Dont display HUD if we have to pan the camera
    if(BattleCutsceneControler.CurrentCharacter[0].Character.GuyType != BattleCutsceneControler.CurrentTarget[0].Character.GuyType){
        BattleCutsceneControler.CurrentTarget[0].DisplayHUD = true;
        BattleCutsceneControler.CurrentTarget[0].visible = true;
    }
    
    //set up the controler
    BattleCutsceneControler.CurrentCharacter[0].visible = true;//in case it was flagged off earlier
    BattleCutsceneControler.CurrentCharacter[0].DisplayHUD = true;//display the attackee's HUD
    BattleCutsceneControler.PanDirection = 'Start';
    BattleCutsceneControler.State = 'Start';
    BattleCutsceneControler.Action = 'Item';
    BattleCutsceneControler.CurrentCharacter[0].sprite_index = Get_Battle_Cutscene_Character_Sprite(BattleCutsceneControler.CurrentCharacter[0].Character.ID, 'Idle');
    BattleCutsceneControler.CurrentCharacter[0].image_speed = Get_Battle_Cutscene_Anim_Speed(BattleCutsceneControler.CurrentCharacter[0].Character.ID, BattleCutsceneControler.CurrentCharacter[0].image_number);
    BattleCutsceneControler.CurrentTarget[0].sprite_index = Get_Battle_Cutscene_Character_Sprite(BattleCutsceneControler.CurrentTarget[0].Character.ID, 'Idle');
    BattleCutsceneControler.CurrentTarget[0].image_speed = Get_Battle_Cutscene_Anim_Speed(BattleCutsceneControler.CurrentTarget[0].Character.ID, BattleCutsceneControler.CurrentTarget[0].image_number);
}

ScreenFade(0, .04, 'in', -1);//fade into battle cutscene
