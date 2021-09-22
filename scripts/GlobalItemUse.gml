//This script takes care of calling the correct Item use script for battle cutscenes.

if((Item = 201)){
    UseMedicalHerbBattle();//really should be named 'skip flashy spell stuff'
}

else if(Item = 10){
    UseQuickRing();
}

else if(Item = 52){
    UseBlackRing(); // UseHeatAxe same as BlackRing don't need to make new script
}

else if (Item = 56){
    UseDarkSword();
}
else if (Item = 58){
    UseKatana();
}


else if (Item = 60){
    UseChaosBreaker();
}

else if((Item = 202)){
    UseHealingSeedBattle();//really should be named 'skip flashy spell stuff'
}

else if((Item = 203)){
    UseAntidoteBattle();
}

else if((Item = 204)){
    UseAngelWingBattle();
}

else if((Item = 205)){
    UseQuickChickenBattle();
}

else if((Item = 206)){
    UseProtectMilkBattle();
}

else if((Item = 207)){
    UseCheerfulBreadBattle();
}
else if(Item = 208){
    UsePowerPotionBattle();
}
else if(Item = 209){
    UseProtectRing();
}
else if(Item = 210){
    UseEvilRing();
}
else if(Item = 211){
    UseAttackRing();
}
else if(Item = 212){
    UseWhiteRing();
}
else if(Item = 213){
    UseBlackRing();
}
else if(Item = 214){
    UseMobilityPimentoBattle();
}

else{
    BattleCutsceneItemUseScript();
}
