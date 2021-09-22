//no need for arguments since the code always goes through the cutscene controler
with(CutsceneControler){
    switch ID {
        case 1:
        Cutscene01();
        break;
        
        case 2:
        Cutscene02();
        break;
        
        case 3:
        Cutscene03();
        break;
        
        case 4:
        Cutscene04();
        break;
        
        case 5:
        Cutscene05();
        break;
        
        case 6:
        Cutscene05_2();
        break;
        
        case 7:
        Cutscene06();
        break;
        
        case 8:
        Cutscene07();
        break;
        
        case 9:
        Cutscene08();
        break;
        
        case 10:
        Cutscene08_2();
        break;
        
        case 11:
        Cutscene08_3();
        break;
        
        case 12:
        Cutscene09();
        break;
        
        case 13:
        Cutscene09_2();
        break;
        
        case 14:
        Cutscene10();
        break;   

        case 15:
        Cutscene10_2();
        break;                                 

        case 16:
        Cutscene10_3();
        break; 

        case 17:
        Cutscene10_4();
        break; 
        
        case 18:
        Cutscene10_5();
        break;
        
        case 19:
        Cutscene11();
        break;
        
        case 20:
        Cutscene11_2();
        break; 
        
        case 21:
        Cutscene12();
        break;
        
        case 22:
        Cutscene12_2();
        break;
        
        case 23:
        Cutscene13();
        break; 
        
        case 24:
        Cutscene14();
        break;
        
        case 25:
        Cutscene14_2();
        break;
        
        case 26:
        Cutscene15();
        break;
        
        case 27:
        Cutscene16();
        break;
        
        case 28:
        Cutscene16_2();
        break;
        
        case 29:
        Cutscene17();
        break;
        
        case 30:
        Cutscene18();
        break;    
        
        case 31:
        Cutscene19();
        break;
        
        case 32:
        Cutscene20();
        break; 
        
        case 33:
        Cutscene21();
        break;
        
        case 34:
        Cutscene22();
        break;  
        
        case 35:
        Cutscene23();
        break;

        case 36:
        Cutscene24();
        break;
        
        case 37:
        Cutscene25();
        break; 
        
        case 38:
        Cutscene26();
        break;
        
        case 39:
        Cutscene27();
        break;  
        
        case 40:
        Cutscene28();
        break; 

        case 41:
        Cutscene29();
        break;  
        
        case 42:
        Cutscene30();
        break;

        case 43:
        Cutscene31();
        break; 

        case 44:
        Cutscene32();
        break;  
        
        case 45:
        Cutscene33();
        break; 
        
        case 46:
        Cutscene33_2();
        break;
        
        case 47:
        Cutscene33_3();
        break;
        
        case 48:
        Cutscene34();
        break;
        
        case 49:
        Cutscene35();
        break; 
        
        case 50:
        Cutscene36();
        break;  
        
        case 51:
        Cutscene37();
        break; 
        
        case 52:
        Cutscene38();
        break;  
        
        case 53:
        Cutscene39();
        break;
        
        case 54:
        Cutscene40();
        break;     
        
        case 55:
        Cutscene41();
        break;
        
        case 56:
        Cutscene42();
        break;

        case 57:
        Cutscene43();
        break; 

        case 58:
        Cutscene44();
        break; 

        case 59:
        Cutscene45();
        break; 

        case 60:
        Cutscene46();
        break; 

        case 61:
        Cutscene47();
        break;

        case 62:
        Cutscene48();
        break;

        case 63:
        Cutscene49();
        break;

        case 64:
        Cutscene50();
        break;
        
        case 65:
        Cutscene47_2();
        break;         
                                                                                                                                                                                
        
 // Special Cutscenes       
        case 200:
        CutscenePriest();
        break;
        
        case 201:
        CutsceneShop();
        break;
        
        case 202:
        CutsceneShopNoRoom();
        break;
        
        case 203:
        CutsceneShopNoMoney();
        break;
        
        case 204:
        CutsceneShopBought();
        break; 
        
        case 205:
        CutscenePromo();
        break;
        
        case 206:
        CutsceneShop_Sell();
        break;
        
        case 207:
        CutsceneShop_Sell_NoItem();
        break;
        
        case 208:
        CutsceneBarracks();
        break; 
        
        case 209:
        CutsceneIntro();
        break;
        
        case 210:
        CutsceneIntro2();
        break;
        
        case 211:
        CutsceneIntro3();
        break                                    

        case 212:
        CutsceneIntro4();
        break 
        
        case 213:
        CutsceneIntro5();
        break 
        
        case 214:
        CutsceneIntro6();
        break    
        
        case 215:
        CutsceneIntro7();
        break 
        
        case 216:
        CutsceneIntro8();
        break    
        
        case 217:
        CutsceneIntro9();
        break    
        
        case 218:
        CutsceneIntro10();
        break     
        
        case 219:
        CutsceneIntro11();
        break 
        
        case 220:
        CutsceneIntro12();
        break   
        
        case 221:
        CutsceneIntro13();
        break  
        
        case 222:
        CutsceneIntro14();
        break
        
        case 223:
        CutsceneCure();
        break;                                                                                 
        
        case 300:
        Cutscene21_2();
        break;                                                                                                                                     
                        
        default:
        instance_destroy();
        break;
    }
}
