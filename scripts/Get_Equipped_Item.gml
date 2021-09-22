//returns the ItemID of a character's equipped item.
//Argument 0 = Character ID
var ID;
ID = argument0;

if (global.Equipped_Item[ID] = 0){//Item Slot of Equipped item.
    return 0;   
}
else {
    return global.Items[ID,global.Equipped_Item[ID]];
}