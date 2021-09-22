//arg0 -- Group to select.
//arg1 -- Guy to test.


var Group, ii;

Group = argument0;
ii = argument1;


if (Group = 1){//select players
if(ii.GuyType = 'player'){
return true;
}
else{
return false;
}
}


else if(Group = 2){//select enemies
if(ii.GuyType = 'enemy'){
return true;
}
else{
return false;
}
}


else if (Group = 3){//select both players and enemies
if((ii.GuyType = 'player')||(ii.GuyType = 'enemy')){
return true;
}
else{
return false;
}
}
else{
return false;
}

//4 = select empty tiles?