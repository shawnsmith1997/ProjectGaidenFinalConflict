//if value is bigger than the cap, set it to the cap
//No real need for this script other than having cleaner code.

var Value, Cap;
Value = argument0;
Cap = argument1;

if(Value > Cap){
    Value = Cap;
}
return Value;