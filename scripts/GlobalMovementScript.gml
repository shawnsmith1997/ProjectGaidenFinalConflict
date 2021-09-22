//calls correct movement script
var ScriptID;
ScriptID = argument0;
Player = argument1;

//if(ScriptID = 0){
    with(CutsceneControler){
        //Cutscene01();
        event_perform(ev_other,ev_user0);
    }
//}