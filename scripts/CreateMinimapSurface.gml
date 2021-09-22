//Creates a minimap to be drawn to the screen
var ww, hh, mytile;

ww=room_width/24;
hh=room_height/24;

MinimapSurface=surface_create((room_width/6)+14, (room_height/6)+14);
surface_set_target(MinimapSurface);

draw_set_blend_mode(bm_normal);

//Draw the top
for (i=0; i < ww; i+=1){
    draw_sprite(MinimapTopSprite,0,(i*4)+7,0);
}
//Draw the bottom
for (i=0; i < ww; i+=1){
    draw_sprite(MinimapBottomSprite,0,(i*4)+7,(room_height/6)+7);
}
//Draw the left
for (i=0; i < hh; i+=1){
    draw_sprite(MinimapLeftSprite,0,0,(i*4)+7);
}
//Draw the right
for (i=0; i < hh; i+=1){
    draw_sprite(MinimapRightSprite,0,(room_width/6)+7,(i*4)+7);
}

//Draw the corners
draw_sprite(MinimapTopLeftSprite,0,0,0);
draw_sprite(MinimapTopRightSprite,0,(room_width/6)+7,0);
draw_sprite(MinimapBottomLeftSprite,0,0,(room_height/6)+7);
draw_sprite(MinimapBottomRightSprite,0,(room_width/6)+9,(room_height/6)+9);

//This loop draws every tile to the minimap. (Layer  1000000)
for (i=0; i < ww; i+=1){
    for (z=0; z<hh; z+=1){
    mytile=tile_layer_find(1000000, i*24, z*24)//That line searh only tile on layer 5000. Need to be run on every layers.
    
        if mytile!=-1{
            draw_background_part_ext(tile_get_background(mytile), tile_get_left(mytile), tile_get_top(mytile), tile_get_width(mytile), tile_get_height(mytile), (4*i)+7, (4*z)+7,1/6,1/6,c_white,1);
        }    
    }
}
//This loop draws every tile to the minimap. (Layer  999999)
for (i=0; i < ww; i+=1){
    for (z=0; z<hh; z+=1){
    mytile=tile_layer_find(999999, i*24, z*24)//That line searh only tile on layer 5000. Need to be run on every layers.
    
        if mytile!=-1{
            draw_background_part_ext(tile_get_background(mytile), tile_get_left(mytile), tile_get_top(mytile), tile_get_width(mytile), tile_get_height(mytile), (4*i)+7, (4*z)+7,1/6,1/6,c_white,1);
        }    
    }
}

//This loop draws every tile to the minimap. (Layer  -100)
for (i=0; i < ww; i+=1){
    for (z=0; z<hh; z+=1){
    mytile=tile_layer_find(-100, i*24, z*24)//That line searh only tile on layer 5000. Need to be run on every layers.
    
        if mytile!=-1{
            draw_background_part_ext(tile_get_background(mytile), tile_get_left(mytile), tile_get_top(mytile), tile_get_width(mytile), tile_get_height(mytile), (4*i)+7, (4*z)+7,1/6,1/6,c_white,1);
        }    
    }
}
surface_reset_target()
