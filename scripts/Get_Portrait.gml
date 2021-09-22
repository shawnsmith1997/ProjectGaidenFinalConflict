//Argument 0 = Player ID

var UnitID, Sprite_New;

UnitID = argument0;


if (UnitID = 1){
    Sprite_New = JasonPortrait;
}
else if (UnitID = 2){
    Sprite_New = MeadPortrait;
}
else if (UnitID = 3){
    Sprite_New = SonettePortrait;
}
else if (UnitID = 4){
    Sprite_New = PaigePortrait;
}
else if (UnitID = 5){
    Sprite_New = HawelPortrait;
}
else if (UnitID = 6){
    Sprite_New = CynthiaPortrait;
}
else if (UnitID = 7){
    Sprite_New = KnucklesPortrait;
}
else if (UnitID = 8){
    Sprite_New = RuburanPortrait;
}
else if (UnitID = 9){
    Sprite_New = face09;
}
else if (UnitID = 10){
    Sprite_New = face10;
}
else if (UnitID = 11){
    Sprite_New = face11;
}
else if (UnitID = 12){
    Sprite_New = face12;
}
else if (UnitID = 13){
    Sprite_New = MintoPortrait;
}
else if (UnitID = 14){
    Sprite_New = MortonPortrait;
}
else if (UnitID = 15){
    Sprite_New = face15;
}
else if (UnitID = 16){
    Sprite_New = RidionPortrait;
}
else if (UnitID = 17){
    Sprite_New = face17;
}
else if (UnitID = 18){
    Sprite_New = MaxPortrait;
}
else if (UnitID = 19){
    Sprite_New = OddEyePortrait;
}
else if (UnitID = 20){
    Sprite_New = LynxPortrait;
}
else if (UnitID = 21){
    Sprite_New = JogurtPortrait;
}
else if (UnitID = 22){
    Sprite_New = VolcanonPortrait;
}
else if (UnitID = 23){
    Sprite_New = EikuPortrait;
}
else if (UnitID = 24){
    Sprite_New = MagusPortrait;
}
else if (UnitID = 25){
    Sprite_New = MitulaPortrait;
}
else if (UnitID = 26){
    Sprite_New = DarksolPortrait;
}
else if (UnitID = 27){
    Sprite_New = DarksolPortrait2;
}

else if (UnitID = 28){
    Sprite_New = AdamPortrait;
}
else if (UnitID = 29){
    Sprite_New = ElderPortrait;
}
else if (UnitID = 30){
    Sprite_New = MischaelaPortrait;
}

else if(UnitID = 100){
    Sprite_New = PacoPortrait;
}
else if (UnitID = 200){
    Sprite_New = MinasPortrait;
}
else if (UnitID = 201){
    Sprite_New = ChaosPortrait;
}

//If they dont have a portrait, set it to "blank"
else{
    Sprite_New = BlankSprite;
}
return Sprite_New;