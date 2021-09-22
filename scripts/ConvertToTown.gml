//converts a battle map to a town map.
//delete terrain triggers
//delete cell objects that arent walls
//delete npcs
//delete cursor and battle controler
//create town controler

with(Cursor){
    instance_destroy();
}
with(BattleControler){
    instance_destroy();
}
with(objGuy){
    OverwriteDeathEvent = true;
    instance_destroy();
}
with(objCell){
    if((TerrainType != 'wall')&&(TerrainType != 'mountains')&&(TerrainType != 'water')){//keep solid tiles
        instance_destroy();
    }
}