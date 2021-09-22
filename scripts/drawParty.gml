x_pos = 1;
y_pos = 1;
counter = 1;

var k = 1;

var j =1;

    var i = 1;
    for ( i = 1; i<20; i++){
    
      if (global.In_Battle_Party[i] = 1){
        var temp = instance_create(25*x_pos,30 + 36*(y_pos-1),GenericCutsceneNPC);
        global.inBarracksParty[counter] = i;
            with(temp){
            ID = 1000;
            SpriteID = i;
            direction = 270;
            }
            counter += 1;
        x_pos += 1;
        if (x_pos = 5){y_pos += 1; x_pos = 1;}
      }
      if (counter = 13) break;
        
}
x_pos = 1;
y_pos = 1;
counter = 1;
global.totalinBarracks = 0;
    var z = 1;
    for ( z = 1; z<20; z++){
    
      if (global.In_Battle_Party[z] = 0 and global.In_Force[z]= 1){
        var temp = instance_create(175 + 25 *(x_pos - 1),27 + 27*(y_pos-1),GenericCutsceneNPC);
            global.inBarracks[counter] = z;
            global.totalinBarracks += 1;
            with(temp){
            ID = 1000;
            SpriteID = z;
            direction = 270;
            }
            counter += 1;
        x_pos += 1;
        if (x_pos = 3){y_pos += 1; x_pos = 1;}
      }
      if (counter = 9) break;
        
}