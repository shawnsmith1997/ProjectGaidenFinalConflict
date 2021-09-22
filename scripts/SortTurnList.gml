var currentmin, currentminindex, ii;

for( i = 0; i < Cursor.NumberOfGuys; i += 1){
    //i +=1;
    currentmin = Cursor.TurnOrder[i];
    currentminindex = i;
    
    for(j = i+1; j < Cursor.NumberOfGuys; j += 1){
        //j+=1;
        if(((currentmin.TurnNumber < Cursor.TurnOrder[j].TurnNumber))){ //we have a new max
            currentmin = Cursor.TurnOrder[j];
            currentminindex = j;
        }
    }
    
    if (currentminindex != i){//swap if we have a new min different then the i'th
        Cursor.TurnOrder[currentminindex] = Cursor.TurnOrder[i];
        Cursor.TurnOrder[i] = currentmin;
    }
}


//Replaces any "DoubleTurn" temporary objects with the objects they point to. (ie the character who got a double turn)
for( i = 0; i < Cursor.NumberOfGuys; i += 1){
ii = Cursor.TurnOrder[i];

if(ii.object_index = BonusTurnObj){
Cursor.TurnOrder[i] = ii.ID;
with(ii){
instance_destroy();
}
}
}