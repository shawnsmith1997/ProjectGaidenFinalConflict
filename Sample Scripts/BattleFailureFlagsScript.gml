//tests for failure
var ID;
ID = argument0;

if(ID = 1){//Battle is lost when main character dies
    global.DeathFlag = true;
}

if(room = BattleRoom01){
    if(instance_number(objPlayer) = 1){//if we killed the last guy
        global.DeathFlag = true;//end battle
    }
}
    
    /*
if(room = DemoBattle1){
    if(ID = 1){//Battle is lost when main character dies
        global.DeathFlag = true;
    }
}
else{//demo battle 2
    if(ID != 0){//Battle is lost when any character dies
        global.DeathFlag = true;
    }
}
