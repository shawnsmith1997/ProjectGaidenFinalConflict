//returns the ItemID of a character's equipped weapon.
//Argument 0 = Character
var ID;
ID = argument0;

if (global.Equipped_Weapon[ID] = 0){//Item Slot of Equipped item.
    return 0;   
}
else {
    return global.Items[ID,global.Equipped_Weapon[ID]];
}