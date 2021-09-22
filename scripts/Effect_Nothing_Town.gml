//charname uses the X! But nothing happens!
switch (State){
case 0://character uses the X
    CreateDialogueBasic(0,0,WordWrap(string(global.Name[Character1]+ ' uses the ' + Get_Item_Stats(global.Items[Character1,ItemSlot],'Name')+ Get_Item_Stats(global.Items[Character1,ItemSlot],'Name2')+'.'),200,'#',false), self.id, true);
    State = 10;
    break;
    
case 10://But nothing happens!
    AppendDialogueBasic('#But nothing happens.',true);
    State = 20;
    break;
    
case 20://pan out dialogue
    PanOutDialogueBasic();
    State = 30;
    break;
    
case 30://delete controlers and return to the item controler
    State = 40;
    DestroyItem = false;
    event_perform(ev_other,ev_user1);
    break;
}