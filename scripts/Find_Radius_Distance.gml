//Finds the tile distance between 2 characters
var x1, x2, y1, y2,xTotal, yTotal;
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;

xTotal = abs(x1 - x2)/24;
yTotal = abs(y1 - y2)/24;

if((xTotal)>(yTotal)){
    return xTotal;
}
else{
    return yTotal;
}