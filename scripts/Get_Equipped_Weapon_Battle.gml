//returns the ItemID of a character's equipped weapon.
//Argument 0 = Character
var Character;
Character = argument0;

if (Character.EquippedWeapon = 0){//Item Slot of Equipped item.
    return 0;   
}
else {
    return Character.Items[Character.EquippedWeapon];
}