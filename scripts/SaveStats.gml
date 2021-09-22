//Saves a character's stats
var Character;
Character = argument0;


with(Character){

    global.Level[ID] = Level;
    global.Experience[ID] = Experience;
    global.Health[ID] = Health;
    global.MaxHealth[ID] = MaxHealth;
    global.Magic[ID] = Magic;
    global.MaxMagic[ID] = MaxMagic;
    global.Attack[ID] = Attack;
    global.Defense[ID] = Defense;
    global.Agility[ID] = Agility;
    global.MoveRange[ID] = MoveRange;
    global.Kills[ID] = Kills;
    global.Defeats[ID] = Defeats;
    global.Poisoned[ID] = Poisoned;
    global.Spells[ID,1] = Spells[1];
    global.Spells[ID,2] = Spells[2];
    global.Spells[ID,3] = Spells[3];
    global.Spells[ID,4] = Spells[4];
    
    global.SpellLevel[ID,1] = SpellLevel[1];
    global.SpellLevel[ID,2] = SpellLevel[2];
    global.SpellLevel[ID,3] = SpellLevel[3];
    global.SpellLevel[ID,4] = SpellLevel[4];
    
    global.Items[ID,1] = Items[1];
    global.Items[ID,2] = Items[2];
    global.Items[ID,3] = Items[3];
    global.Items[ID,4] = Items[4];
    
    global.Equipped_Weapon[ID] = EquippedWeapon;
    global.Equipped_Item[ID] = EquippedItem;
}
