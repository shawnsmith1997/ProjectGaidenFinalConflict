//This script finds and calls the correct script
var ID; //What bookshelf did we interact with and where are we at during the script.
ID = argument0;

//use case
if(ID = 1){
    StairScript01();
}
else if(ID = 2){
    StairScript02();
}
else if(ID = 3){
    RoomTransfer01();
}
else if(ID = 4){
    RoomTransfer02();
}
else if(ID = 5){
    RoomTransfer03();
}