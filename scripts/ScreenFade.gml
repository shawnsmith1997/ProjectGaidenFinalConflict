//For creating a Screen fade object and starting to fade
//Arguments:
//Color, Alpha, Stop, Speed, Direction, Current Object

var Stop, Speed, Direction, Object;

Stop = argument0;
Speed = argument1;
Direction = argument2;
Object = argument3;

//Assign new variables.
with(ScreenFadeControler){
    FadeStop = Stop;
    FadeSpeed = Speed;
    FadeDirection = Direction;
    CurrentObject = Object;
}