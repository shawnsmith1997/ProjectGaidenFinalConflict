//ok, this script is for calculating experience gains
//XP = (Z*D/M)
//Z = max experience obtainable based on level difference (or 25 if healing)
//D = Damage done
//M = Max health of target
//Min = minimum obtainable xp. (10 for healing, 1 for attacking)

var CurrentCharacter, CurrentTarget, Action, Spell, SpellLevel, Tile;

CurrentCharacter = argument0;
CurrentTarget = argument1;
Action = argument2;
Tile = 1;

if (CurrentCharacter.GuyType = 'player'){
    //Draw Tile
    if (instance_position(CurrentCharacter.x,CurrentCharacter.y,objCell).TerrainType = 'plains'){
        Tile = 1;
    }
    else if (instance_position(CurrentCharacter.x,CurrentCharacter.y,objCell).TerrainType = 'overgrowth'){
        Tile = 2;
    }
    else if (instance_position(CurrentCharacter.x,CurrentCharacter.y,objCell).TerrainType = 'sand'){
        Tile = 3;
    }
}
else if (CurrentTarget.GuyType = 'player'){
    //Draw Tile
    if (instance_position( CurrentTarget.xOrig , CurrentTarget.yOrig , objCell ).TerrainType = 'plains'){
        Tile = 1;
    }
    else if (instance_position( CurrentTarget.xOrig , CurrentTarget.yOrig , objCell ).TerrainType = 'overgrowth'){
        Tile = 2;
    }
    else if (instance_position( CurrentTarget.xOrig , CurrentTarget.yOrig , objCell ).TerrainType = 'sand'){
        Tile = 3;
    }
}


return Tile;
