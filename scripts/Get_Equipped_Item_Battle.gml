//returns the ItemID of a character's equipped Item.
//Argument 0 = ID of Player
var Character;
Character = argument0;

if (Character.EquippedItem = 0){//Item Slot of Equipped item.
    return 0;   
}
else {
    return Character.Items[Character.EquippedItem];
}