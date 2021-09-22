var Character, Message, NumberOfGains;
var BaseHP, BaseMP, BaseAttack, BaseDefense, BaseAgility;
var HPGain, MPGain, AttackGain, DefenseGain, AgilityGain;
var ProjectedHP, ProjectedMP, ProjectedAttack, ProjectedDefense, ProjectedAgility;

Character = argument0;
NumberOfGains = 29;//total gains
//divided level curves
EarlyGains = 9;
MidGains = 10;
LateGains = 10;

//Base Stats
BaseHP = 11;
BaseMP = 8;
BaseAttack = 9;
BaseDefense = 5;
BaseAgility = 5;

//Projected Stats
ProjectedHP = 41;
ProjectedMP = 44;
ProjectedAttack = 24;
ProjectedDefense = 24;
ProjectedAgility = 32;


//Level
Character.Level += 1;
Character.Experience -= 100;
Message = string('#' + Character.Name + ' is now level ' + string(Character.Level));

if(Character.Level <= EarlyGains+1){
    AttackGain = floor(random_range(0,1) + ((ProjectedAttack-BaseAttack)*.3/EarlyGains));//Attack
    DefenseGain = floor(random_range(0,1) + ((ProjectedDefense-BaseDefense)*.3/EarlyGains));//Defense
    AgilityGain = floor(random_range(0,1) + ((ProjectedAgility-BaseAgility)*.3/EarlyGains));//Agility
    HPGain = floor(random_range(0,1) + ((ProjectedHP-BaseHP)*.33/EarlyGains));//MaxHP
    MPGain = floor(random_range(0,1) + ((ProjectedMP-BaseMP)*.5/EarlyGains));//MaxMP
}
else if(Character.Level <= MidGains + EarlyGains+1){
    AttackGain = floor(random_range(0,1) + ((ProjectedAttack-BaseAttack)*.3/MidGains));//Attack
    DefenseGain = floor(random_range(0,1) + ((ProjectedDefense-BaseDefense)*.3/MidGains));//Defense
    AgilityGain = floor(random_range(0,1) + ((ProjectedAgility-BaseAgility)*.3/MidGains));//Agility
    HPGain = floor(random_range(0,1) + ((ProjectedHP-BaseHP)*.3/MidGains));//MaxHP
    MPGain = floor(random_range(0,1) + ((ProjectedMP-BaseMP)*.3/MidGains));//MaxMP
}
else if(Character.Level <= LateGains + MidGains + EarlyGains+1){
    AttackGain = floor(random_range(0,1) + ((ProjectedAttack-BaseAttack)*.3/LateGains));//Attack
    DefenseGain = floor(random_range(0,1) + ((ProjectedDefense-BaseDefense)*.3/LateGains));//Defense
    AgilityGain = floor(random_range(0,1) + ((ProjectedAgility-BaseAgility)*.3/LateGains));//Agility
    HPGain = floor(random_range(0,1) + ((ProjectedHP-BaseHP)*.3/LateGains));//MaxHP
    MPGain = floor(random_range(0,1) + ((ProjectedMP-BaseMP)*.2/LateGains));//MaxMP
}
else{//this fires after the max level
    AttackGain = floor(random_range(0,1) + ((ProjectedAttack-BaseAttack)/NumberOfGains));//Attack
    DefenseGain = floor(random_range(0,1) + ((ProjectedDefense-BaseDefense)/NumberOfGains));//Defense
    AgilityGain = floor(random_range(0,1) + ((ProjectedAgility-BaseAgility)/NumberOfGains));//Agility
    HPGain = floor(random_range(0,1) + ((ProjectedHP-BaseHP)/NumberOfGains));//MaxHP
    MPGain = floor(random_range(0,1) + ((ProjectedMP-BaseMP)/NumberOfGains));//MaxMP
}


//HAWEL
if (Character.Level = 8 and global.Promoted[5] = 0){
Character.SpellLevel[1] = 2; //Hawel Learns Blaze Level 2
Message += string(' ^#Blaze is now Level 2');
}
if (Character.Level = 4 and global.Promoted[5] = 0){
Character.Spells[2] = 'Bolt'; //Hawel Learns Bolt
Character.SpellLevel[2] = 1; //Hawel Learns Bolt Level 1
Message += string(' ^#Hawel learned Bolt');
}

if (Character.Level = 9 and global.Promoted[5] = 1){
Character.Spells[3] = 'Attack'; //Hawel Learns Attack
Character.SpellLevel[3] = 1; //Hawel Learns Bolt Level 1
Message += string(' ^#Hawel learned Attack');
}

if (Character.Level = 6 and global.Promoted[5] = 1){
Character.SpellLevel[1] = 3; //Hawel Learns Blaze Level 3
Message += string(' ^#Blaze is now Level 3');
}

if (Character.Level = 16 and global.Promoted[5] = 1){
Character.SpellLevel[1] = 4; //Hawel Learns Blaze Level 4
Message += string(' ^#Blaze is now Level 4');
}

if (Character.Level = 3 and global.Promoted[5] = 1){
Character.SpellLevel[2] = 2; //Hawel Learns Bolt Level 2
Message += string(' ^#Bolt is now Level 2');
}

if (Character.Level = 12 and global.Promoted[5] = 1){
Character.SpellLevel[2] = 3; //Hawel Learns Bolt Level 3
Message += string(' ^#Bolt is now Level 3');
}
if (Character.Level = 19 and global.Promoted[5] = 1){
Character.SpellLevel[2] = 4; //Hawel Learns Bolt Level 4
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
