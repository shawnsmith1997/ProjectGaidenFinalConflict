//Used to draw The health / MP bars
var Health, MaxHealth, XLoc, YLoc, i, temp;
Health = argument0;//Health / Mana stat of character
MaxHealth = argument1;//MaxHealth /MaxMana stat of character
XLoc = argument2;//Xcoord of where to draw on screen / surface
YLoc = argument3;//Ycoord of where to draw on screen / surface
temp = 0;//where we stopped drawing hp so we can draw the damaged portion of the bar

if(MaxHealth = 0){//Prevents drawing magic bar for those who have 0 mana. 
exit;
}

//Draw End of Bar
draw_sprite(HealthBarEnd,0,XLoc,YLoc);
XLoc+=1;

if(Health >= 400){
//Draw Black Bar
for(i = 1; i <= 100; i+=1){
draw_sprite(HealthBarBlack,0,XLoc,YLoc);
XLoc+=1;
temp +=1;
}
}

else if(Health > 300){
//Draw Black Bar
for(i = 301; i <= Health; i+=1){
draw_sprite(HealthBarBlack,0,XLoc,YLoc);
XLoc+=1;
temp +=1;
}
//Draw Blue Bar
for(i = temp; i < 100; i+=1){
draw_sprite(HealthBarBlue,0,XLoc,YLoc);
XLoc+=1;
}
}

else if(Health > 200){
//Draw Blue Bar
for(i = 201; i <= Health; i+=1){
draw_sprite(HealthBarBlue,0,XLoc,YLoc);
XLoc+=1;
temp +=1;
}
//Draw Green Bar
for(i = temp; i < 100; i+=1){
draw_sprite(HealthBarGreen,0,XLoc,YLoc);
XLoc+=1;
}
}

else if(Health > 100){
//Draw Green Bar
for(i = 101; i <= Health; i+=1){
draw_sprite(HealthBarGreen,0,XLoc,YLoc);
XLoc+=1;
temp +=1;
}
//Draw Yellow Bar
for(i = temp; i < 100; i+=1){
draw_sprite(HealthBarFull,0,XLoc,YLoc);
XLoc+=1;
}
}

else{
//Draw Yellow Bar
for(i = 1; i <= Health; i+=1){
draw_sprite(HealthBarFull,0,XLoc,YLoc);
XLoc+=1;
}
//Draw Red Bar

if (MaxHealth > 100){//if we have more than 100, make sure we only draw up to 100
for(i = Health; i < 100; i+=1){
draw_sprite(HealthBarEmpty,0,XLoc,YLoc);
XLoc+=1;
}
}

else {//Otherwise, just draw up to maxhealth
for(i = Health; i < MaxHealth; i+=1){
draw_sprite(HealthBarEmpty,0,XLoc,YLoc);
XLoc+=1;
}
}
}

//Draw End of Bar
draw_sprite(HealthBarEnd,0,XLoc,YLoc);