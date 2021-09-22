//This script assigns default controls, gamespeed, ect. 

//if SyroConfig.ini exists, read in its values for controls. 
//if it doesnt exist, create it and assign the default values 
//to the controls and game settings. 

//Arguments are as follows (Section, Key, Default Value)
//Loads game speed from [Settings] <GameSpeed>
//if it doesnt exist, a default value of 3 is given to game speed.
ini_open("SyroConfig.ini");
global.GameSpeed = ini_read_real("Settings", "GameSpeed", 3);
ini_close();//Close the ini file.

/*
It started 2 years ago
the battle that changed our lives
the entire continent faught against the hordes of evil
our combined efforts were barely enough to stop it...


Although we had won the battle, the entire continent was rendered unlivable...