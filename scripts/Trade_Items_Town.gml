//This script takes care of trading items during battle
//Arguments, Character, Target, CharacterSlot, TargetSlot

var Character1, Character2, ItemSlot1, ItemSlot2, Item1, Item2;

Character1 = argument0;
Character2 = argument1;
ItemSlot1 = argument2;
ItemSlot2 = argument3;

//remember what items to give each character
Item1 = global.Items[Character1,ItemSlot1];
Item2 = global.Items[Character2,ItemSlot2];
//delete the items from the characters
Delete_Items_Town(Character1,ItemSlot1);
Delete_Items_Town(Character2,ItemSlot2);
//Give each character the item
Give_Item_Town(Character1,Item2);
Give_Item_Town(Character2,Item1);