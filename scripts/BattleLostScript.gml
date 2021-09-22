//This script takes care of all post-battle functions
with(objPlayer){
    SaveStats(self);
}
global.inBattle = 0;
GlobalHealAll();//restore health and mana
//can test for individual room numbers 

if(DefeatControler.State = 0){
    if(DefeatControler.DialogueState = 0){
        sound_loop(SF1Sadness);
        CreateDialogueBasic(0,0,"You have been defeated!",DefeatControler,false);
        DefeatControler.DialogueState +=1;
    }
    else if(DefeatControler.DialogueState = 1){
        DefeatControler.DialogueState +=1;
        sound_play(MenuPanSound);
        PanOutDialogueBasic();
    }
    else if(DefeatControler.DialogueState = 2){
        DefeatControler.DialogueState = 0;
        DefeatControler.State = 1;
        CreateScreenFade(c_black,0,1,.025,'out',DefeatControler);
    }
}
else if(DefeatControler.State = 1){
   // room_restart();//change to go back to previous town later
    //global.IsDead[1] = false;//revive characters.
    //global.IsDead[2] = false;
    //global.IsDead[3] = false;
   global.TransitionState = -1;
   sound_stop(SF1Sadness);
   room_goto(Town1);
   //room_restart();
}
