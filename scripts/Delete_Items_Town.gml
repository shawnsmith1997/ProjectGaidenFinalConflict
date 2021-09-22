//This script simply removes an item from a character's inventory.
var Character, ItemSlot;

Character = argument0;
ItemSlot = argument1;

//If weapon is equipped, unequip it.
if(global.Equipped_Weapon[Character] = ItemSlot){
    global.Equipped_Weapon[Character] = 0;
}
//If Item is equipped, unequip it.
if(global.Equipped_Item[Character] = ItemSlot){
    global.Equipped_Item[Character] = 0;
}
//Delete the item
global.Items[Character,ItemSlot] = 0;
//Sort the inventory.
Shift_Items_Town(Character,ItemSlot);