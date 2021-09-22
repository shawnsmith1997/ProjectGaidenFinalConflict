//creates the list of characters that will go into battle.

var index,i;
index = 1;
i=1;
intermediateForceVariable = global.ForceMembers;
if (global.battleID > 17){
    if (!global.In_Force[15]){
        intermediateForceVariable++;
    }    
}
if (global.battleID > 19){
    if (!global.In_Force[17]){
        intermediateForceVariable++;
    }    
}
if (intermediateForceVariable > 20){
        intermediateForceVariable = 20;
}
while(index <= intermediateForceVariable){
    if(global.In_Battle_Party[index]){
        global.BattleList[i] = index;
        i+=1;
    }
    index +=1;
}
