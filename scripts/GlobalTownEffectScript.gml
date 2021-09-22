//figure out what item use effect to call.
var ID;//which item effect
ID = argument0;

switch(ID){
    case 205: Effect_AgilityUp_Town(); break;
    case 206: Effect_DefenceUp_Town(); break;
    case 207: Effect_HealthUp_Town(); break;
    case 208: Effect_AttackUp_Town(); break;
    case 214: Effect_MoveUp_Town(); break;
    default: Effect_Nothing_Town(); break;
    
}
