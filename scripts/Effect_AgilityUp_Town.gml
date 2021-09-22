//increases attack of the target by 2-4.

//charname uses the X! But nothing happens!

switch (State){
case 0://character uses the X
    CreateDialogueBasic(0,0,WordWrap(string(global.Name[Character2]+ ' uses the ' + Get_Item_Stats(global.Items[Character1,ItemSlot],'Name')+ Get_Item_Stats(global.Items[Character1,ItemSlot],'Name2')+'.'),200,'#',false), self.id, true);
    State = 10;
    break;
    
case 10://But nothing happens!
    var Gain;
    Gain = round(random_range(2,4));
    global.Agility[Character2] += Gain;
    AppendDialogueBasic(WordWrap(string('#'+global.Name[Character2] + "'s agility was boosted by " + string(Gain)),200,'#',false),true);
    State = 20;
    break;
    
case 20://pan out dialogue
    PanOutDialogueBasic();
    State = 30;
    break;
    
case 30://delete controlers and return to the item controler
    State = 40;
    event_perform(ev_other,ev_user1);
    break;
}
