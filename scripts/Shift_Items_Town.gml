//used when you sell, drop, or trade an item. 
//basically it shifts the item array down.

var Character, ItemSlot;
Character = argument0;
ItemSlot = argument1;

if(ItemSlot != 0){//dont delete the null slot
    //Shift the equipped Weapon slot down 1 if the deleted item is in front.
    if(global.Equipped_Weapon[Character] > ItemSlot){
        global.Equipped_Weapon[Character] -=1;
    }
    //Shift the equipped Item slot down 1 if the deleted item is in front.
    if(global.Equipped_Item[Character] > ItemSlot){
        global.Equipped_Item[Character] -=1;
    }
    //Shift the items in the inventory down 1. 
    for(index = 1; index < 4; index += 1){
        if(index >= ItemSlot){
            global.Items[Character,index] = global.Items[Character,index + 1];
        }
    }
    global.Items[Character,4] = 0;
}