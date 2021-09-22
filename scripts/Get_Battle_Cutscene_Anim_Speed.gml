//Returns the animation speed of the character based on arguments given.
//argument0 = character's ID number
//argument1 = Speed to return
//General Rules (though, you dont really need to follow this... it just helps)
//0 is a null ID 
//ID 1-999 is for force members
//ID 1000-1999 is for enemies
//ID 2000-2999 is for NPCs
//Basically ^^^ just keeps everything sorted in unison.

var Sprite, SpriteArg, ID;
ID = argument0;
SpeedArg = argument1;
//Speed = .08;
Speed = SpeedArg / 40;//Speed = SpeedArg / 25;
//=========
//Players==
//=========
/*
//Character 1
if(ID = 1){
    Speed = .08;
}

//Character 2
else if(ID = 2){
    Speed = .12;
}

//Character 3
else if(ID = 3){
    Speed = .08;
}

//Character4
else if(ID = 4){
    Speed = .08;
}

//Character 5
else if(ID = 5){
    Speed = .08;
}

//Character 6
else if(ID = 6){
    Speed = .08;
}

else if(ID = 8){
    Speed = .12;
}

else if(ID = 11){
    Speed = .12;
}

else if(ID = 16){
    Speed = .12;
}

//=========
//Enemies==
//=========

else if(ID = 1000){//wolf
    Speed = .12;
}
else if(ID = 1001){//alpha wolf
    Speed = .12;
}
*/
return Speed;
