//This script takes care of all post-battle functions
with(objPlayer){
    SaveStats(self);
}
global.inBattle = 0;
GlobalHealAll();//restore health and mana
if(room = BattleRoom01){
    global.StoryState = 2;
    room_goto(BattleRoom01CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }

        
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom02){

    room_goto(BattleRoom02CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom03){
    global.StoryState = 3;
    room_goto(BattleRoom03CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom04){
    global.StoryState = 3;
    room_goto(BattleRoom04CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom05){
    global.StoryState = 3;
    room_goto(BattleRoom05CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom06){
    global.StoryState = 3;
    room_goto(BattleRoom06CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom07){
    global.StoryState = 3;
    room_goto(BattleRoom07CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom08){
    global.StoryState = 3;
    room_goto(BattleRoom08CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom09){
    global.StoryState = 3;
    room_goto(BattleRoom09CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom10){
    global.StoryState = 3;
    room_goto(BattleRoom10CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom11){
    global.StoryState = 3;
    room_goto(BattleRoom11CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom12){
    global.StoryState = 3;
    room_goto(BattleRoom12CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom13){
    global.StoryState = 3;
    room_goto(BattleRoom13CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom14){
    global.StoryState = 3;
    room_goto(BattleRoom14CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom15){
    global.StoryState = 3;
    room_goto(BattleRoom15CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom16){
    global.StoryState = 3;
    room_goto(BattleRoom16CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom17){
    global.StoryState = 3;
    room_goto(BattleRoom17CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom18){
    global.StoryState = 3;
    room_goto(BattleRoom18CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom19){
    global.StoryState = 3;
    room_goto(BattleRoom19CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom20){
    global.StoryState = 3;
    room_goto(BattleRoom20CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom21){
    global.StoryState = 5;
    room_goto(BattleRoom21CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = BattleRoom22){
    global.StoryState = 5;
    room_goto(BattleRoom22CutscenePost);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}

else if(room = Test_Battle_ROOM){
    global.StoryState = 5;
    room_goto(CutsceneIntroRoom);
    if(VictoryControler.State = 0){
        VictoryControler.State += 1;
        CreateScreenFade(c_black,0,1,.025,'out',self.id);
    }
    else{
        var NewX, NewY;
        with(objPlayer){
            if(ID = 1){
                NewX = x;
                NewY = y;
            }
        }
        ConvertToTown();//delete all battle objects and set for overworld exploration
        instance_activate_object(RoomTransferObject);//can add more for npcs, and such.
        instance_create(NewX,NewY,PlayerTownObject);
        PlayerTownObject.direction = 270;
        view_object[0]=PlayerTownObject;
        CreateChain();
        ScreenFade(0,.05,'in',self);
        with(VictoryControler){
            instance_destroy();
        }
    }
}
