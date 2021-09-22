//This script causes tiles that are flagged for Attacking to flash.
 
 
with ( objCell ){//UnBlocks Attackable tiles and makes them flash
    if ( Attackable ){//If we can attack the tile...
        image_index = 1; //Make sure they are all in sync
        image_speed = .125; //Speed of flash 
        visible = true;
    }
    else{
        image_index = 0; //Make sure they are all in sync
        image_speed = 0; //Speed of flash 
        visible = false;
    }
}