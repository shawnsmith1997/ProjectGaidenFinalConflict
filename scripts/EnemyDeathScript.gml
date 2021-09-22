//===========================
//Test for killing all units=
//===========================
if(instance_number(objEnemy) = 1){//if we killed the last guy
    global.VictoryFlag = true;//end battle
}


//==================================
//Test for killing a boss character=
//==================================
//Comment this out until you need it for a future boss character

/*
if(room = BattleRoom06){//if we are on battle number X
    with(objEnemy){
        if(SubID = 22){//test for killing a specific unit (usually a boss)
             global.VictoryFlag = true;//again, end the battle
        }
    }
}

if(room = BattleRoom11){//if we are on battle number X
    with(objEnemy){
        if(SubID = 22){//test for killing a specific unit (usually a boss)
             global.VictoryFlag = true;//again, end the battle
        }
    }
}

if(room = BattleRoom15){//if we are on battle number X
    with(objEnemy){
        if(SubID = 22){//test for killing a specific unit (usually a boss)
             global.VictoryFlag = true;//again, end the battle
        }
    }
}

if(room = BattleRoom16){//if we are on battle number X
    //with(objEnemy){
        //if(SubID = 22){//test for killing a specific unit (usually a boss)
             //global.VictoryFlag = true;//again, end the battle
        //}
    //}
    if(instance_number(objBoss) = 1){//if we killed the last guy
        global.VictoryFlag = true;//end battle
    }    
}

if(room = BattleRoom17){//if we are on battle number X
    //with(objEnemy){
        if(SubID = 22){//test for killing a specific unit (usually a boss)
             global.VictoryFlag = true;//again, end the battle
        }
    //}
}

if(room = BattleRoom20){//if we are on battle number X
    with(objEnemy){
        if(SubID = 22){//test for killing a specific unit (usually a boss)
             global.VictoryFlag = true;//again, end the battle
        }
    }
}

if(room = BattleRoom20){//if we are on battle number X
    with(objEnemy){
        if(SubID = 22){//test for killing a specific unit (usually a boss)
             global.VictoryFlag = true;//again, end the battle
        }
    }
}/*
