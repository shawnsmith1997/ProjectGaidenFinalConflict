//DrawLEWindow
//Draws the Land Effect Window
//Argument 0 = Character object (Just for x / y values)

var CurrentCharacter,UnitType;
CurrentCharacter = argument0;
    
LandEffectWindowSurface = surface_create(68,44);
surface_set_target(LandEffectWindowSurface);
draw_clear_alpha(c_white,0);//wipes out the surface

    UnitType = CurrentCharacter.MovementType;
    
    draw_set_halign(fa_left);
    draw_set_font(MenuFont);
    draw_set_color(c_white);
    draw_sprite(LandEffectWindowSprite,0,0,0);
    //Draw Land Effect Window
    draw_text(10, -3, 'LAND');
    draw_text(10, 5, 'EFFECT');
    
    var Tile, TempCost;
    Tile = instance_position(round(CurrentCharacter.x),round(CurrentCharacter.y),objCell);
    TempCost = floor((FindLandEffect(UnitType,Tile.TerrainType)*100)); //Get Land Effect percentage.
    
    draw_set_halign(fa_right);
    draw_text(58, 16, string(TempCost)+'%'); //LandEffect%

 surface_reset_target();
    
    
    
    
  