global.TurnCycle = 0;
var ii, TempIndex,TempArray;
//reset number of guys
Cursor.NumberOfGuys = 0;
TempIndex = 0;
TempArray[0] = noone;

instance_activate_object(objGuy);//gotta activate the hiddens before we can select them
/*
with(objGuy){
    if((Hidden)&&(!CanReveal(self.id))){//if the units are hidden, deactivate them so they arent counted or able to be interacted with. 
        instance_deactivate_object(self.id);
    }
}*/
with(objGuy){
    if((Hidden)&&(!CanReveal(self.id))){//if the units are hidden, deactivate them so they arent counted or able to be interacted with. 
        //instance_deactivate_object(self.id);//cant do this here because of iterator reasons... gg gamemaker
        TempArray[TempIndex] = self.id;
        TempIndex += 1;
    }
}

var i;//deactivate the hidden units that arent being revealed at present time.
for(i = 0; i<TempIndex; i+=1){
    instance_deactivate_object(TempArray[i]);
}










randomize();
with(objGuy){
    //calc TurnOrder
    if(Hidden){
        TurnNumber = 9999;//hidden units are revealed first, so i force them to have high priority.
    }
    else{
        TurnNumber = (floor(Get_Battle_Stat_Total(self.id,'Agility') * random_range(.5, 1.5)));
    }
    Cursor.NumberOfGuys += 1;
    Cursor.TurnOrder[global.TurnCycle] = id;
    global.TurnCycle +=1;
}

//If they get more than 1 turn...
with(objGuy){
    if(!Hidden){//if they arent hidden
        if(Get_Battle_Stat_Total(self.id,'Turns')>0){//Every character gets 1 turn by default, this only calculates bonus turns
            var index;
            index = Get_Battle_Stat_Total(self.id,'Turns');
            
            while(index > 0){
                Cursor.NumberOfGuys +=1;
                ii = instance_create(0,0,BonusTurnObj);
                ii.TurnNumber = (floor(Get_Battle_Stat_Total(self.id,'Agility') * random_range(.5, 1.5)));
                ii.ID = id;
                index -= 1;
                Cursor.TurnOrder[global.TurnCycle] = ii.id;
                global.TurnCycle +=1;
            }
        }
    }
}