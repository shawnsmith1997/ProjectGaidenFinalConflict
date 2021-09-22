//used when you sell, drop, or trade an item. 
//basically it shifts the item array down.

var Character, ItemSlot;
Character = argument0;
ItemSlot = argument1;

if(ItemSlot != 0){//dont delete the null slot
    //Shift the equipped Weapon slot down 1 if the deleted item is in front.
    if(Character.EquippedWeapon > ItemSlot){
        Character.EquippedWeapon -=1;
    }
    //Shift the equipped Item slot down 1 if the deleted item is in front.
    if(Character.EquippedItem > ItemSlot){
        Character.EquippedItem -=1;
    }
    //Shift the items in the inventory down 1. 
    for(index = 1; index < 4; index += 1){
        if(index >= ItemSlot){
            Character.Items[index] = Character.Items[(index + 1)]
        }
    }
    Character.Items[4] = 0;
}