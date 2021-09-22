//This script causes tiles that are flagged for allowing movement to flash.
 
 
with ( objCell ){//UnBlocks moveable tiles and makes them flash
    if ( Reachable ){//If we can reach the tile...
        image_index = 0; //Make sure they are all in sync
        image_speed = .125; //Speed of flash 
        visible = true;
    }
}