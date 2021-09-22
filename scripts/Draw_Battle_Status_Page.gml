//This draws the status page of a force member.

var Temp, ID;
CharacterToDraw = argument0;
Pan = argument1;

draw_set_font(MenuFont);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_sprite(LandEffectWindow,0,view_xview + 8 - Pan,view_yview + 86);
draw_sprite(GoldWindow,0,view_xview + 8 - (Pan/2),view_yview + 203 + (Pan/2));
draw_sprite(StatusWindow,0,view_xview + 70 + Pan,view_yview + 8);
draw_sprite(Get_Portrait(CharacterToDraw.ID),0,view_xview + 8 - Pan,view_yview + 8 - Pan);

draw_text(view_xview + 8+8 - (Pan/2),view_yview + 203 + (Pan/2),'GOLD');
draw_text(view_xview + 8+8 - Pan,view_yview + 46+104,'KILLS');
draw_text(view_xview + 8+8 - Pan,view_yview + 62+104,'DEATHS');

draw_set_halign(fa_right);
draw_text(view_xview + 8+8+48 - (Pan/2),view_yview + 211 + (Pan/2),string(global.Gold));
draw_text(view_xview + 8+8+48 - Pan,view_yview + 54+104,string(CharacterToDraw.Kills));
draw_text(view_xview + 8+8+48 - Pan,view_yview + 70+104,string(CharacterToDraw.Defeats));
draw_set_halign(fa_left);

draw_text(view_xview + 84 + Pan,view_yview + 8,string(CharacterToDraw.Class) + ' ' + string(CharacterToDraw.Name));
if(CharacterToDraw.Poisoned){
    draw_sprite(PoisonedSprite,0,view_xview + 227 + Pan,view_yview + 18);//change location of icon, it's probs wrong
}
if(Character.GuyType = 'player'){
    if(CharacterToDraw.Cursed){
        draw_sprite(CursedSprite,0,view_xview + 210 + Pan,view_yview + 18);//change location of icon, it's probs wrong
    }
}

draw_text(view_xview + 84 + Pan,view_yview + 24, ' LV');
draw_set_halign(fa_right);
draw_text(view_xview + 156 + Pan,view_yview + 24,string(CharacterToDraw.Level));
draw_set_halign(fa_left);
draw_text(view_xview + 84 + Pan,view_yview + 24, '            ATT');
draw_set_halign(fa_right);
draw_text(view_xview + 237 + Pan,view_yview + 24,string(Get_Battle_Stat_Total(CharacterToDraw,'Attack')));

draw_set_halign(fa_left);
draw_text(view_xview + 84 + Pan,view_yview + 40, ' HP');
draw_set_halign(fa_right);
if(CharacterToDraw.MaxHealth > 99){
draw_text(view_xview + 156 + Pan,view_yview + 40,string('??'));
}
else{
draw_text(view_xview + 156 + Pan,view_yview + 40,string(CharacterToDraw.MaxHealth));
}
if(CharacterToDraw.Health > 99){
draw_text(view_xview + 141 + Pan,view_yview + 40,string('??/'));
}
else{
draw_text(view_xview + 141 + Pan,view_yview + 40,string(CharacterToDraw.Health)+ '/');
}
draw_set_halign(fa_left);
draw_text(view_xview + 84 + Pan,view_yview + 40, '            DEF');
draw_set_halign(fa_right);
draw_text(view_xview + 237 + Pan,view_yview + 40,string(Get_Battle_Stat_Total(CharacterToDraw,'Defense')));

draw_set_halign(fa_left);
draw_text(view_xview + 84 + Pan,view_yview + 56, ' MP');
draw_set_halign(fa_right);

if(CharacterToDraw.MaxMagic > 99){
draw_text(view_xview + 156 + Pan,view_yview + 56,string('??'));
}
else{
draw_text(view_xview + 156 + Pan,view_yview + 56,string(CharacterToDraw.MaxMagic));
}
if(CharacterToDraw.Magic > 99){
draw_text(view_xview + 141 + Pan,view_yview + 56,string('??/'));
}
else{
draw_text(view_xview + 141 + Pan,view_yview + 56,string(CharacterToDraw.Magic)+ '/');
}


draw_set_halign(fa_left);
draw_text(view_xview + 84 + Pan,view_yview + 56, '            AGI');
draw_set_halign(fa_right);
draw_text(view_xview + 237 + Pan,view_yview + 56,string(Get_Battle_Stat_Total(CharacterToDraw,'Agility')));

draw_set_halign(fa_left);
draw_text(view_xview + 84 + Pan,view_yview + 72, ' EX');
draw_set_halign(fa_right);
draw_text(view_xview + 156 + Pan,view_yview + 72,string(CharacterToDraw.Experience));
draw_set_halign(fa_left);
draw_text(view_xview + 84 + Pan,view_yview + 72, '            MOV');
draw_set_halign(fa_right);
draw_text(view_xview + 237 + Pan,view_yview + 72,string(Get_Battle_Stat_Total(CharacterToDraw,'MoveRange')));

draw_set_halign(fa_left);
draw_text(view_xview + 84 + Pan,view_yview + 96,'MAGIC     ITEM');

//Draw Magic Stuff
Temp = CharacterToDraw.Spells[1];
if (Temp != 'none'){
draw_sprite(Get_Spell_Stats(Temp,CharacterToDraw.SpellLevel[1],'Sprite'),0,view_xview + 84 + Pan,view_yview + 120);
draw_text(view_xview + 101 + Pan,view_yview+12 + 108-12,string(Temp));
Temp = CharacterToDraw.SpellLevel[1];
for(i=0;i<Temp;i+=1){

draw_sprite(SpellLevelSprite,0,view_xview + 100+(i*12) + Pan,view_yview + 116+6+7+8);
}
}
else{
draw_set_color(c_orange);
draw_text(view_xview + 92 + Pan,view_yview+12 + 116,'Nothing');
draw_set_color(c_white);
}

Temp = CharacterToDraw.Spells[2];
if (Temp != 'none'){
draw_sprite(Get_Spell_Stats(Temp,CharacterToDraw.SpellLevel[2],'Sprite'),0,view_xview + 84 + Pan,view_yview + 144);
draw_text(view_xview + 101 + Pan,view_yview+12 + 132-12,string(Temp));
Temp = CharacterToDraw.SpellLevel[2];
for(i=0;i<Temp;i+=1){

draw_sprite(SpellLevelSprite,0,view_xview + 100+(i*12) + Pan,view_yview + 116+6+7+8+24);
}
}

Temp = CharacterToDraw.Spells[3];
if (Temp != 'none'){
draw_sprite(Get_Spell_Stats(Temp,CharacterToDraw.SpellLevel[3],'Sprite'),0,view_xview + 84 + Pan,view_yview + 168);
draw_text(view_xview + 101 + Pan,view_yview+12 + 156-12,string(Temp));
Temp = CharacterToDraw.SpellLevel[3];
for(i=0;i<Temp;i+=1){

draw_sprite(SpellLevelSprite,0,view_xview + 100+(i*12) + Pan,view_yview + 116+6+7+8+48);
}
}

Temp = CharacterToDraw.Spells[4];
if (Temp != 'none'){
draw_sprite(Get_Spell_Stats(Temp,CharacterToDraw.SpellLevel[4],'Sprite'),0,view_xview + 84 + Pan,view_yview + 192);
draw_text(view_xview + 101 + Pan,view_yview+12 + 180-12,string(Temp));
Temp = CharacterToDraw.SpellLevel[4];
for(i=0;i<Temp;i+=1){

draw_sprite(SpellLevelSprite,0,view_xview + 100+(i*12) + Pan,view_yview + 116+30+7+8+48);
}
}


//Draw Item Stuff
Temp = CharacterToDraw.Items[1];
if (Temp != 0){
draw_sprite(Get_Item_Stats(Temp,'Sprite'),0,view_xview + 164 + Pan,view_yview + 120);
draw_text(view_xview + 181 + Pan,view_yview + 108,string(Get_Item_Stats(Temp,'Name')));
draw_text(view_xview + 181 + Pan,view_yview + 116,string(Get_Item_Stats(Temp,'Name2')));

if((CharacterToDraw.EquippedWeapon = 1)||(CharacterToDraw.EquippedItem = 1)){
draw_set_color(c_orange);
draw_text(view_xview + 181 + Pan,view_yview + 124,'Equipped');
draw_set_color(c_white);
}
}
else{
draw_set_color(c_orange);
draw_text(view_xview + 173 + Pan,view_yview + 116,'Nothing');
draw_set_color(c_white);
}

Temp = CharacterToDraw.Items[2];
if (Temp != 0){
draw_sprite(Get_Item_Stats(Temp,'Sprite'),0,view_xview + 164 + Pan,view_yview + 144);
draw_text(view_xview + 181 + Pan,view_yview + 132,string(Get_Item_Stats(Temp,'Name')));
draw_text(view_xview + 181 + Pan,view_yview + 140,string(Get_Item_Stats(Temp,'Name2')));

if((CharacterToDraw.EquippedWeapon = 2)||(CharacterToDraw.EquippedItem = 2)){
draw_set_color(c_orange);
draw_text(view_xview + 181 + Pan,view_yview + 148,'Equipped');
draw_set_color(c_white);
}
}

Temp = CharacterToDraw.Items[3];
if (Temp != 0){
draw_sprite(Get_Item_Stats(Temp,'Sprite'),0,view_xview + 164 + Pan,view_yview + 168);
draw_text(view_xview + 181 + Pan,view_yview + 156,string(Get_Item_Stats(Temp,'Name')));
draw_text(view_xview + 181 + Pan,view_yview + 164,string(Get_Item_Stats(Temp,'Name2')));

if((CharacterToDraw.EquippedWeapon = 3)||(CharacterToDraw.EquippedItem = 3)){
draw_set_color(c_orange);
draw_text(view_xview + 181 + Pan,view_yview + 172,'Equipped');
draw_set_color(c_white);
}
}

Temp = CharacterToDraw.Items[4];
if (Temp != 0){
draw_sprite(Get_Item_Stats(Temp,'Sprite'),0,view_xview + 164 + Pan,view_yview + 192);
draw_text(view_xview + 181 + Pan,view_yview + 180,string(Get_Item_Stats(Temp,'Name')));
draw_text(view_xview + 181 + Pan,view_yview + 188,string(Get_Item_Stats(Temp,'Name2')));

if((CharacterToDraw.EquippedWeapon = 4)||(CharacterToDraw.EquippedItem = 4)){
draw_set_color(c_orange);
draw_text(view_xview + 181 + Pan,view_yview + 196,'Equipped');
draw_set_color(c_white);
}
}