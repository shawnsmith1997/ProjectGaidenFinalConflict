//Creates a Yes/No controler and pans it in for you
//Argument0 = CurrentObject. (which object is awaiting an answer)

var Object;
Object = argument0;

instance_create(0,0,YesNoControler);
with (YesNoControler){
    sound_play(MenuPanSound);
    PanDirection = 'in';
    CurrentObject = Object
}