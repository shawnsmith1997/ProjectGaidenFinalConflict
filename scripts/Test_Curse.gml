//Tests if we block the hit or not.
var Character;
Character = argument0;
//get stat total block
//Default SF2 has blocks set to either 1/32, 1/16, 1/8, or 1/4;

//Global Default is 1/16
//Generate random number between 0 and 16 (0-15)
if(random_range(0,1)>=(1-0.15)){
    return true;
}
return false;

/*
future code
gen random number between 1 and 100
test if higher than (block stat total)

*/