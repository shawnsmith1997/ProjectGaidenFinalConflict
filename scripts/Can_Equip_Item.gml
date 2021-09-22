//argument 0 = Player's ID
//argument 1 = Item's ID
//argument 2 = Type of item (0, 1, 2) (Main Hand, Off Hand, Either)

var Item, Class, Equippable;

Class = argument0;
Item = argument1;
Slot = argument2; //Main (0) Offhand (1)

Equippable = false;//default, item is not equippable
//This way things that arent equippable by anyone need not be listed.

if(Item = 1){//Wooden Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BDMN')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 2 or Item = 28 or Item = 32 or Item = 43 or Item = 44 or Item = 50){//Wooden Arrow
    if((Class = 'ARCR')||(Class = 'SNIP')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 3 or Item = 42 or Item = 54 or Item = 55){//Wooden Rod
    if((Class = 'MAGE')||(Class = 'WIZD')||(Class = 'HEAL')||(Class = 'PRST')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 10){//Quick Ring
    if(Slot = 1){
        Equippable = true;
    }
}
else if(Item = 11){//Mobility Ring
    if(Slot = 1){
        Equippable = true;
    }
}

else if(Item = 209){//Protect Ring
    if(Slot = 1){
        Equippable = true;
    }
}

else if(Item = 210){//Evil Ring
    if(Slot = 1){
        Equippable = true;
    }
}

else if(Item = 25 or Item = 26 or Item = 35 or Item = 40 or Item = 47 or Item = 52 or Item = 57){//Short Axe
    if((Class = 'DWF')||(Class = 'WARR')||(Class = 'DWF')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 29){//Long Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BDMN')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 30 or Item = 27 or Item = 38 or Item = 39  or Item = 46){//Steel Lance
    if((Class = 'KNT')||(Class = 'PLDN')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 31 or Item = 41 or Item = 48 or Item = 53 ){//Beard
    if((Class = 'MONK')||(Class = 'MMNK')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 32){//Steel Arrow
    if((Class = 'ARCR')||(Class = 'SNPR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 33 or Item = 58 or Item = 51 ){//Dagger
    if((Class = 'THIF')||(Class = 'NINJ')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

//Cheaty stuff
if(Item = 100){//Wooden Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 101){//Wooden Arrow
    if((Class = 'ARCR')||(Class = 'SNIP')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 102){//Mobility Ring
    if(Slot = 1){
        Equippable = true;
    }
}

else if(Item = 6){//Stick
    if((Class = 'KNT')||(Class = 'PLDN')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 7){//Wooden Spear
    if((Class = 'KNT')||(Class = 'PLDN')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 8){//Elven Arrow
    if((Class = 'ARCR')||(Class = 'SNIP')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

/*else if(Item = 11){//??? Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}*/
else if(Item = 98){//great Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'WARR')||(Class = 'ADMN')||(Class = 'BDMN')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 13){//mist javelin
    if((Class = 'THIF')||(Class = 'NINJ')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 14){//misting staff
    if((Class = 'MAGE')||(Class = 'WIZD')||(Class = 'HEAL')||(Class = 'PRST')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 15){//great shot
    if((Class = 'ARCR')||(Class = 'SNIP')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 16){//Ban hammer
    if(Class = 'ADMN'){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 17){//Beard
    if((Class = 'MONK')||(Class = 'MMNK')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 27){//Bronze Lance
    if((Class = 'KNT')||(Class = 'PLDN')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}
else if(Item = 28){//Iron Arrow
    if((Class = 'ARCR')||(Class = 'SNIP')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 26){//Hand Axe
    if((Class = 'DWF')||(Class = 'DWF')||(Class = 'WARR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 35){//Md Axe
    if((Class = 'DWF')||(Class = 'DWF')||(Class = 'WARR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 36){//Steel Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BDMN')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 37){//Broad Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BDMN')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 38){//Power Spear
    if((Class = 'KNT')||(Class = 'PLDN')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 39){//Power Spear
    if((Class = 'KNT')||(Class = 'PLDN')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 40){//Md Axe
    if((Class = 'DWF')||(Class = 'DWF')||(Class = 'WARR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 41){//Brass Knuckles
    if((Class = 'MONK')||(Class = 'MMNK')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 42){//Power Stick
    if((Class = 'MAGE')||(Class = 'WIZD')||(Class = 'HEAL')||(Class = 'PRST')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 43){//Robin Arrow
    if((Class = 'ARCR')||(Class = 'SNIP')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 44){//Assault Shell
    if((Class = 'ARCR')||(Class = 'SNIP')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 45){//Critical Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BDMN')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 46){//Valkyrie
    if((Class = 'KNT')||(Class = 'PLDN')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 47){//Great Axe
    if((Class = 'DWF')||(Class = 'DWF')||(Class = 'WARR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 48){//Battle Knuckles
    if((Class = 'MONK')||(Class = 'MMNK')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 49){//Archangel Staff
    if((Class = 'MAGE')||(Class = 'WIZD')||(Class = 'HEAL')||(Class = 'PRST')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 50){//Great Shot
    if((Class = 'ARCR')||(Class = 'SNIP')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 51){//Throwing Katana
    if((Class = 'THIF')||(Class = 'NINJ')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 52){//Heat Axe
    if((Class = 'DWF')||(Class = 'DWF')||(Class = 'WARR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 53){//Kaiser Knuckles
    if((Class = 'MONK')||(Class = 'MMNK')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 54){//Mystery Staff
    if((Class = 'MAGE')||(Class = 'WIZD')||(Class = 'HEAL')||(Class = 'PRST')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 55){//Demon Rod
    if((Class = 'MAGE')||(Class = 'WIZD')||(Class = 'HEAL')||(Class = 'PRST')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 56){//Dark Sword
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BDMN')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 57){//Ground Axe
    if((Class = 'DWF')||(Class = 'DWF')||(Class = 'WARR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 58){//Katana
    if(Class = 'SMR'){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

else if(Item = 60){//Choas Breaker
    if((Class = 'SDMN')||(Class = 'HERO')||(Class = 'BDMN')||(Class = 'BTLR')){
        if(Slot = 0){
            Equippable = true;
        }
    }
}

return Equippable;
