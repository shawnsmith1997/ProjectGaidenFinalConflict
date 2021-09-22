var Character, Direction, Tiles, Speed;

Character = argument0;
Direction = argument1;
Tiles = argument2;
Speed = argument3;

with(Character){
    CallEvent = true;
    moveSpeed = Speed;
    if (Direction = "Right"){
        isMoving = true;      // Lets start moving
        moveTimer = gridSize*Tiles; // Ready moveTimer for countdown
        speedX = Speed;   // Set horizontal speed
        speedY = 0;           // Set vertical speed
    }
    else if (Direction = "Up"){
        isMoving = true;
        moveTimer = gridSize*Tiles;
        speedX = 0;
        speedY = -Speed;
    }
    else if (Direction = "Left"){
        isMoving = true;
        moveTimer = gridSize*Tiles;
        speedX = -Speed;
        speedY = 0;
    }
    else if (Direction = "Down"){
        isMoving = true;
        moveTimer = gridSize*Tiles;
        speedX = 0;
        speedY = Speed;
    }
}