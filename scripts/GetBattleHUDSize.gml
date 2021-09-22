//returns the size of the battle HUD window
var CurrentCharacter, HUD; 
CurrentCharacter = argument0;//The character object who we want to draw the battle hud for

var Health, MaxHealth, Magic, MaxMagic, Class, Level, Name, Size;

Health = CurrentCharacter.Health;
MaxHealth = CurrentCharacter.MaxHealth;
Magic = CurrentCharacter.Magic;
MaxMagic = CurrentCharacter.MaxMagic;
Class = CurrentCharacter.Class;
Level = CurrentCharacter.Level;
Name = CurrentCharacter.Name;

if(CurrentCharacter.GuyType == 'enemy'){//If the character is an enemy, class and level arent displayed
    Class = "";
    Level = "";
}

//Draw Battle HUD window
//Figure out what menu size to use. 
var _Length;
_Length = string_length(string(string(Name)+ " " + string(string(Class) + string(Level))));
    
if((_Length >= 20)||(MaxHealth>93)|| (Health>93) ||(Magic>93) || (MaxMagic>93)){
    Size = 182;
}
    
else if((_Length = 19)||(MaxHealth>85)|| (Health>85) ||(Magic>85) ||(MaxMagic>85)){
    Size = 174
}
else if((_Length = 18)||(MaxHealth>77)||(Health>77) ||(Magic>77) ||(MaxMagic>77)){
    Size = 166;
}
else if((_Length = 17)||(MaxHealth>69)||(Health>69) ||(Magic>69) ||(MaxMagic>69)){
    Size = 158;
}
else if((_Length = 16)||(MaxHealth>61)||(Health>61) ||(Magic>61) ||(MaxMagic>61)){
    Size = 150;
}
else if((_Length = 15)||(MaxHealth>53)||(Health>53) ||(Magic>53) ||(MaxMagic>53)){
    Size = 142;
}
else if((_Length = 14)||(MaxHealth>45)||(Health>45) ||(Magic>45) ||(MaxMagic>45)){
    Size = 134;
}
else if((_Length = 13)||(MaxHealth>37)||(Health>37) ||(Magic>37) ||(MaxMagic>37)){
    Size = 126
}
else if((_Length = 12)||(MaxHealth>29)||(Health>29) ||(Magic>29) ||(MaxMagic>29)){
    Size = 118;
}
else if((_Length = 11)||(MaxHealth>21)||(Health>21) ||(Magic>21) ||(MaxMagic>21)){
    Size = 110;
}
else {
    Size = 102
}
return(Size);