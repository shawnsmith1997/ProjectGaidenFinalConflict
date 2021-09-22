//Used to call the correct Pan Script

switch(PanType){
case 'Ranged_PtE'://ranged attack, player to enemy
    Pan_Ranged_PtE();
    break;
    
case 'Ranged_EtP'://ranged attack, enemy to player
    Pan_Ranged_EtP();
    break;

case 'Pan_PtP_Out_InAlt'://player to player, normal to alt
    Pan_PtP_Out_InAlt();
    break;
    
case 'Pan_PtP_OutAlt_In'://player to player, alt to normal
    Pan_PtP_OutAlt_In();
    break;
    
case 'Pan_PtP_OutAlt_InAlt'://player to player, alt to alt
    Pan_PtP_OutAlt_InAlt();
    break;
    
case 'Pan_EtE_GlobalLeft':
    Pan_EtE_GlobalLeft();
    break;
case 'Pan_PtP_GlobalRight':
    Pan_PtP_GlobalRight();
    break;
    
case 'Pan_PtP_GlobalLeft':
    Pan_PtP_GlobalLeft();
    break;    
}