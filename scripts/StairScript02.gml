//to jason's basement
if(State = 0){
    State += 1;
    PlayerTownObject.AllowInteraction = false;
    //play stair sound
    //fade out
    CreateScreenFade(c_black,0,2,.05,'out',self.id);
}
else if(State = 1){
    //screen faded out at this point, transfer rooms
    global.TransitionState = 1;//enter jason's basement
    room_goto(JasonBasementRoom);
}