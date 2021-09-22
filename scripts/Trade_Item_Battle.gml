//This script takes care of trading items during battle
//Arguments, Character, Target, CharacterSlot, TargetSlot

var CurrentCharacter, CurrentTarget, CharSlot, TargetSlot, Item1, Item2;

CurrentCharacter = argument0;
CurrentTarget = argument1;
CharSlot = argument2;
TargetSlot = argument3;

//remember what items to give each character
Item1 = CurrentCharacter.Items[CharSlot];
Item2 = CurrentTarget.Items[TargetSlot];
//delete the items from the characters
Delete_Item_Battle(CurrentCharacter,CharSlot);
Delete_Item_Battle(CurrentTarget,TargetSlot);
//Give each character the item
Give_Item_Battle(CurrentCharacter,Item2);
Give_Item_Battle(CurrentTarget,Item1);