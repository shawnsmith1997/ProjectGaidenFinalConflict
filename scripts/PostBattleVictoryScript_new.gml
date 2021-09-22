//This script takes care of all post-battle functions
with(objPlayer){
    SaveStats(self);
}
GlobalHealAll();//restore health and mana
global.inBattle = 0;
if(room = BattleRoom01){
    global.StoryState = 5;
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
//delete this, temp battle
else if(room = DemoRoom){
    global.StoryState = 5;
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
