var CurrentCharacter, HUD; 
CurrentCharacter = argument0;//The character object who we want to draw the battle hud for
HUD = argument1;//main or target HUD (which do we draw / update)

var Health, MaxHealth, Magic, MaxMagic, Class, Level, Name, Size;

Health = CurrentCharacter.Health;
MaxHealth = CurrentCharacter.MaxHealth;
Magic = CurrentCharacter.Magic;
MaxMagic = CurrentCharacter.MaxMagic;
Class = CurrentCharacter.Class;
Level = CurrentCharacter.Level;
Name = CurrentCharacter.Name;

if(CurrentCharacter.GuyType == 'enemy'){//If the character is an enemy, class and level arent displayed
    Class = "";
    Level = "";
}
Size = GetBattleHUDSize(CurrentCharacter);
//Draw Battle HUD window
if(HUD = "main"){
    MainBattleHUDSurface = surface_create(Size,44);
    surface_set_target(MainBattleHUDSurface);
}
else if(HUD = "target"){
    TargetBattleHUDSurface = surface_create(Size,44);
    surface_set_target(TargetBattleHUDSurface);
}
else{//it should never get here but if it does, just exit.
    exit;
}

draw_clear_alpha(c_white,0);//wipes out the surface
    
draw_set_halign(fa_left);
draw_set_font(MenuFont);
draw_set_color(c_white);
    
    
if(Size = 182){
    draw_sprite(HealthMenu11,0,0,0);
}
if(Size = 174){
    draw_sprite(HealthMenu10,0,0,0);
}
if(Size = 166){
    draw_sprite(HealthMenu9,0,0,0);
}
if(Size = 158){
    draw_sprite(HealthMenu8,0,0,0);
}
if(Size = 150){
    draw_sprite(HealthMenu7,0,0,0);
}
if(Size = 142){
    draw_sprite(HealthMenu6,0,0,0);
}
if(Size = 134){
    draw_sprite(HealthMenu5,0,0,0);
}
if(Size = 126){
    draw_sprite(HealthMenu4,0,0,0);
}
if(Size = 118){
    draw_sprite(HealthMenu3,0,0,0);
}
if(Size = 110){
    draw_sprite(HealthMenu2,0,0,0);
}
if(Size = 102){
    draw_sprite(HealthMenu1,0,0,0);
}

    
draw_set_halign(fa_left);
draw_text(10, -3, string(string(Name)+ " " + string(string(Class) + string(Level))));
draw_text(10, 5, 'HP');
draw_text(10, 13, 'MP');

draw_set_halign(fa_right);
var temp, temp2;

if(Health > 99){
    temp = "??";
}
else {
    temp = Health;
}

if(MaxHealth > 99){
    temp2 = "??";
}
else {
    temp2 = MaxHealth;
}
draw_text(Size-12, 5, string(temp)+ '/' + string(temp2)); //Health / MaxHealth

if(Magic > 99){
    temp = "??";
}
else {
    temp = Magic;
}

if(MaxMagic > 99){
    temp2 = "??";
}
else {
    temp2 = MaxMagic;
}
draw_text(Size-12, 13, string(temp)+ '/' + string(temp2)); //Magic / MaxMagic

DrawHealthBar(Health, MaxHealth, 26, 17);//Health Bar
DrawHealthBar(Magic, MaxMagic, 26, 25);//Mana Bar
surface_reset_target();

    