//For creating a Screen fade object and starting to fade
//Arguments:
//Color, Alpha, Stop, Speed, Direction, Current Object

var NewColor, Alpha, Stop, Speed, Direction, Object;

NewColor = argument0;
Alpha = argument1;
Stop = argument2;
Speed = argument3;
Direction = argument4;
Object = argument5;

//Create the object and assign the variables.
instance_create(0,0,ScreenFadeControler);
with(ScreenFadeControler){
    Color = NewColor;
    FadeAlpha = Alpha;
    FadeStop = Stop;
    FadeSpeed = Speed;
    FadeDirection = Direction;
    CurrentObject = Object;
}