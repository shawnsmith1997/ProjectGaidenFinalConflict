//Gives a character an item if they have an open slot for it

var ID, Item;
ID = argument0;
Item = argument1;

if(global.Items[ID,1] = 0){
    global.Items[ID,1] = Item;
}
else if(global.Items[ID,2] = 0){
    global.Items[ID,2] = Item;
}
else if(global.Items[ID,3] = 0){
    global.Items[ID,3] = Item;
}
else if(global.Items[ID,4] = 0){
    global.Items[ID,4] = Item;
}