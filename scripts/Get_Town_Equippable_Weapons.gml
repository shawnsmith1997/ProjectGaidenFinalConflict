//argument 0 = Character
//argument 1 = What opject called this event

var Character, index, ArrayIndex, CurrentObject;

Character = argument0;
CurrentObject = argument1;

index = 1;
ArrayIndex = 1;

//Loop through items.
//if (Can equip)
//add to array
//any spaces beyond array index whatever, add 0s.

while(index < 5){
    if(Can_Equip_Item(global.Class[Character], global.Items[Character,index], 0)){//If the character can equip said item
        CurrentObject.EquippableWeapons[ArrayIndex] = index;//Add it to the list of equippable items
        ArrayIndex += 1;
    }
    index +=1;
}

while(ArrayIndex < 5){//Fill the rest of the array with 0's to prevent 'array out of bounds' error
    CurrentObject.EquippableWeapons[ArrayIndex] = 0;
    ArrayIndex +=1;
}
CurrentObject.EquippableWeapons[4] = 0;//last slot is the remove slot