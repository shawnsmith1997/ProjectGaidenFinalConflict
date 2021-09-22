/*var Character, Message, NumberOfGains;
var BaseHP, BaseMP, BaseAttack, BaseDefense, BaseAgility;
var HPGain, MPGain, AttackGain, DefenseGain, AgilityGain;
var ProjectedHP, ProjectedMP, ProjectedAttack, ProjectedDefense, ProjectedAgility;

Character = argument0;
NumberOfGains = 29;//total gains
//divided level curves
EarlyGains = 29;
MidGains = 0;
LateGains = 0;

//Base Stats
BaseHP = 12;
BaseMP = 8;
BaseAttack = 8;
BaseDefense = 4;
BaseAgility = 4;

//Projected Stats
ProjectedHP = 45;
ProjectedMP = 22;
ProjectedAttack = 40;
ProjectedDefense = 30;
ProjectedAgility = 25;


//Level
Character.Level += 1;
Character.Experience -= 100;
Message = string('#' + Character.Name + ' is now level ' + string(Character.Level));

if(Character.Level < EarlyGains+1){
    AttackGain = floor(random_range(0,1) + ((ProjectedAttack-BaseAttack)/EarlyGains));//Attack
    DefenseGain = floor(random_range(0,1) + ((ProjectedDefense-BaseDefense)/EarlyGains));//Defense
    AgilityGain = floor(random_range(0,1) + ((ProjectedAgility-BaseAgility)/EarlyGains));//Agility
    HPGain = floor(random_range(0,1) + ((ProjectedHP-BaseHP)/EarlyGains));//MaxHP
    MPGain = floor(random_range(0,1) + ((ProjectedMP-BaseMP)/EarlyGains));//MaxMP
}
else if(Character.Level < MidGains + EarlyGains+1){
    AttackGain = floor(random_range(0,1) + ((ProjectedAttack-BaseAttack)/MidGains));//Attack
    DefenseGain = floor(random_range(0,1) + ((ProjectedDefense-BaseDefense)/MidGains));//Defense
    AgilityGain = floor(random_range(0,1) + ((ProjectedAgility-BaseAgility)/MidGains));//Agility
    HPGain = floor(random_range(0,1) + ((ProjectedHP-BaseHP)/MidGains));//MaxHP
    MPGain = floor(random_range(0,1) + ((ProjectedMP-BaseMP)/MidGains));//MaxMP
}
else if(Character.Level < LateGains + MidGains + EarlyGains+1){
    AttackGain = floor(random_range(0,1) + ((ProjectedAttack-BaseAttack)/LateGains));//Attack
    DefenseGain = floor(random_range(0,1) + ((ProjectedDefense-BaseDefense)/LateGains));//Defense
    AgilityGain = floor(random_range(0,1) + ((ProjectedAgility-BaseAgility)/LateGains));//Agility
    HPGain = floor(random_range(0,1) + ((ProjectedHP-BaseHP)/LateGains));//MaxHP
    MPGain = floor(random_range(0,1) + ((ProjectedMP-BaseMP)/LateGains));//MaxMP
}
else{//this fires after the max level
    AttackGain = floor(random_range(0,1) + ((ProjectedAttack-BaseAttack)/NumberOfGains));//Attack
    DefenseGain = floor(random_range(0,1) + ((ProjectedDefense-BaseDefense)/NumberOfGains));//Defense
    AgilityGain = floor(random_range(0,1) + ((ProjectedAgility-BaseAgility)/NumberOfGains));//Agility
    HPGain = floor(random_range(0,1) + ((ProjectedHP-BaseHP)/NumberOfGains));//MaxHP
    MPGain = floor(random_range(0,1) + ((ProjectedMP-BaseMP)/NumberOfGains));//MaxMP
}


//Update Stats
Character.Attack += AttackGain;
Character.Defense += DefenseGain;
Character.Agility += AgilityGain;
Character.MaxHealth += HPGain;
Character.MaxMagic += MPGain;

if(AttackGain > 0){
    Message += string('^#Attack increased by ' + string(AttackGain));
}
if(DefenseGain > 0){
    Message += string('^#Defense increased by ' + string(DefenseGain));
}
if(AgilityGain > 0){
    Message += string('^#Agility increased by ' + string(AgilityGain));
}
if(HPGain > 0){
    Message += string('^#Maximum HP increased by ' + string(HPGain));
}
if(MPGain > 0){
    Message += string('^#Maximum MP increased by ' + string(MPGain));
}

//ending trigger
Message += '^@';

return Message;
*/


var Character, Message;
var HPGain, MPGain, AttackGain, DefenseGain, AgilityGain;

Character = argument0;

//Level
Character.Level += 1;
Character.Experience -= 100;
Message = string('#' + Character.Name + ' is now level ' + string(Character.Level));

AttackGain = 0;
DefenseGain = 0;
AgilityGain = 0;
HPGain = 0;
MPGain = 0;

if(Character.Level <= 30 and global.Promoted[1] = 1){
    AttackGain = floor(random_range(0,1) + 1.1);//Attack
    DefenseGain = floor(random_range(0,1) + .9);//Defense
    AgilityGain = floor(random_range(0,2) + .7);//Agility
    HPGain = floor(random_range(0,2) + 1.1);//MaxHP
    MPGain = floor(random_range(0,2) + .5);//MaxMP
}

else if(Character.Level <= 30){
    AttackGain = floor(random_range(0,1) + 1.1);//Attack
    DefenseGain = floor(random_range(0,1) + .9);//Defense
    AgilityGain = floor(random_range(0,2) + .7);//Agility
    HPGain = floor(random_range(0,1) + 1.1);//MaxHP
    MPGain = floor(random_range(0,1) + .5);//MaxMP
}



if (Character.Level = 5 and global.Promoted[1] = 1){
Character.Spells[2] = 'Bolt'; //Ian Learns Bolt
Character.SpellLevel[2] = 1; //Ian  Learns Bolt Level 1
Message += string(' ^#Bolt was Learned!');
}


if (Character.Level = 8 and global.Promoted[1] = 1){
Character.SpellLevel[2] = 2; //Ian  Learns Bolt Level 2
Message += string(' ^#Bolt is now Level 2');
}

if ((Character.Level = 12 and global.Promoted[1] = 1)){
Character.SpellLevel[2] = 3; //Ian  Learns Bolt Level 3
Message += string(' ^#Bolt is now Level 3');
}

if ((Character.Level = 17 and global.Promoted[1] = 1)  or (Character.Level = 17 and global.Promoted[17] = 1)){
Character.SpellLevel[2] = 4; //Ian  Learns Bolt Level 4
Message += string(' ^#Bolt is now Level 4');
}


//Update Stats
Character.Attack += AttackGain;
Character.Defense += DefenseGain;
Character.Agility += AgilityGain;
Character.MaxHealth += HPGain;
Character.MaxMagic += MPGain;

if(AttackGain > 0){
    Message += string('^#Attack increased by ' + string(AttackGain));
}
if(DefenseGain > 0){
    Message += string('^#Defense increased by ' + string(DefenseGain));
}
if(AgilityGain > 0){
    Message += string('^#Agility increased by ' + string(AgilityGain));
}
if(HPGain > 0){
    Message += string('^#Maximum HP increased by ' + string(HPGain));
}
if(MPGain > 0){
    Message += string('^#Maximum MP increased by ' + string(MPGain));
}



//ending trigger
Message += '^@';

return Message;
