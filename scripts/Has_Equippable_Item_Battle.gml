//argument 0 = Character
//argument 1 = What opject called this event

var Character, index;

Character = argument0;

index = 1;

//Loop through items.
//if (Can equip)
//return true
//any spaces beyond array index whatever, add 0s.

while(index < 5){
    if(Can_Equip_Item(Character.Class, Character.Items[index], 1)){//If the character can equip said item
        return true;
    }
    index +=1;
}

return false;