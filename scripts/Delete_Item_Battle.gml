//This script simply removes an item from a character's inventory.
var Character, ItemSlot;

Character = argument0;
ItemSlot = argument1;

//If weapon is equipped, unequip it.
if(Character.EquippedWeapon = ItemSlot){
    Character.EquippedWeapon = 0;
}
//If Item is equipped, unequip it.
if(Character.EquippedItem = ItemSlot){
    Character.EquippedItem = 0;
}
//Delete the item
Character.Items[ItemSlot] = 0;
//Sort the inventory.
Shift_Items_Battle(Character,ItemSlot);