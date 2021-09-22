//PROMO Cutscene
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1;
        for (i = 0; i<12; i++){
        AnswerwasGiven[i] = false;
        }
        No_given = false;
        instance_create(0,0,CutsceneCamera);
        instance_create(0,0,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = CameraTargetObject;
        break;
      
     
   case 1:
        State += 1 ;
        CreateDialogueBasic(0,0,string(WordWrap("Let me examine all of you!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;
    
    case 2:
        sound_loop(StandardTownBGM);
        if (global.Level[1] > 9 and AnswerwasGiven[1] = false and global.Promoted[1] = 0)
        {
        State = 40000;
        }        
        else if (global.Level[2] > 9 and AnswerwasGiven[2] = false and global.Promoted[2] = 0)
        {
        State = 4;
        }
        else if (global.Level[3] > 9  and AnswerwasGiven[3] = false and global.Promoted[3] = 0)
        {
        State = 5;
        }
        else if (global.Level[4] > 9  and AnswerwasGiven[4] = false and global.Promoted[4] = 0)
        {
        State = 6;
        }
        else if (global.Level[5] > 9 and AnswerwasGiven[5] = false and global.Promoted[5] = 0)
        {
        State = 7;
        }
        else if (global.Level[6] > 9 and AnswerwasGiven[6] = false and global.Promoted[6] = 0)
        {
        State = 8;
        }
        else if (global.Level[7] > 9 and AnswerwasGiven[7] = false and global.Promoted[7] = 0)
        {
        State = 9;
        }
        else if (global.Level[8] > 9 and AnswerwasGiven[8] = false and global.Promoted[8] = 0)
        {
        State = 11;
        }  
        else if (global.Level[9] > 9 and AnswerwasGiven[9] = false and global.Promoted[9] = 0)
        {
        State = 12;
        }   
        else if (global.Level[10] > 9 and AnswerwasGiven[10] = false and global.Promoted[10] = 0)
        {
        State = 13;
        }
        else if (global.Level[11] > 9 and AnswerwasGiven[11] = false and global.Promoted[11] = 0)
        {
        State = 14;
        }                                      
        else if (No_given = true)
        {
        State = 102;
        }
        else
        {
        State = 100;
        }
        PanOutDialogueBasic();
        break;

    case 40000:
        State = 3998;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[1] + " can be promoted. Do you wish to promote him? " ,200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 4005:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3998:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3999:
        if(YesNoAnswer = 'yes'){
                State = 4000;
            AnswerwasGiven[1] = true;
            CutscenePromo();
        }
        else{
            State = 4005;
            AnswerwasGiven[1] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 4006:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;       
    
    case 4000:
        State += 1;
        PanOutDialogueBasic();    
    break;

    case 4001:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[1] + " was promoted to HERO " ,200,'#',false)),self.id,true);
        global.Promoted[1] = 1;
        global.Level[1] = 1;
        global.Class[1] = 'HERO';         
    break;                
                
            
    case 4:
        State = 398;
        CreateDialogueBasic(0,0,string(WordWrap("MEAD can be promoted. Do you wish to promote him?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 405:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 398:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 399:
        if(YesNoAnswer = 'yes'){
                State = 400;
            AnswerwasGiven[2] = true;
            CutscenePromo();
        }
        else{
            State = 405;
            AnswerwasGiven[2] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 406:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;       
    
    case 400:
        State += 1;
        PanOutDialogueBasic();    
    break;

    case 401:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[2] + " was promoted to PLDN " ,200,'#',false)),self.id,true);
        global.Promoted[2] = 1;
        global.Level[2] = 1;
        global.Class[2] = 'PLDN';             
    break;        

     case 10:
        State = 2;
        PanOutDialogueBasic();
    break;
    
    case 5:
    State = 498;
        CreateDialogueBasic(0,0,string(WordWrap("SONETTE can be promoted. Do you wish to promote her?@",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound; 
        DisableDialogueBasic(false);
    break;
    
    case 500:
        State += 1;
        PanOutDialogueBasic()
    break;    
    
    case 505:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
 case 498:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 499:
        if(YesNoAnswer = 'yes'){
                State = 500;
            AnswerwasGiven[3] = true;
            CutscenePromo();
        }
        else{
            State = 505;
            AnswerwasGiven[3] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 506:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;     
        
    case 501:        
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[3] + " was promoted to SNIP " ,200,'#',false)),self.id,true);
        global.Promoted[3] = 1;
        global.Level[3] = 1;
        global.Class[3] = 'SNIP';               
    break;    
    
    case 6:
    State = 598;
        CreateDialogueBasic(0,0,string(WordWrap("PAIGE can be promoted. Do you wish to promote him?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 600:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 605:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 598:
        State += 1;
        AnswerwasGiven[4] = true;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 599:
        if(YesNoAnswer = 'yes'){
                State = 600;
            AnswerwasGiven[4] = true;
            CutscenePromo();
        }
        else{
            State = 605;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 606:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;      
    
    case 601:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[4] + " was promoted to WARR " ,200,'#',false)),self.id,true);
        global.Promoted[4] = 1;
        global.Level[4] = 1;
        global.Class[4] = 'WARR';      
    break;      
    
    case 7:
        State = 698;
        CreateDialogueBasic(0,0,string(WordWrap("HAWEL can be promoted. Do you wish to promote him?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;   
    break;
    
    case 701:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[5] + " was promoted to WIZD " ,200,'#',false)),self.id,true);
        global.Promoted[5] = 1;
        global.Level[5] = 1;
        global.Class[5] = 'WIZD';             
    break;  
    
    case 705:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 698:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 699:
        if(YesNoAnswer = 'yes'){
                State = 700;
            AnswerwasGiven[5] = true;
            CutscenePromo();
        }
        else{
            State = 705;
            AnswerwasGiven[5] = true;
            CutscenePromo();
        } 
    break;    
    
    case 706:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;   

    case 700:
        State += 1;
        PanOutDialogueBasic();    
    break;    
        
    case 8:
        State = 798;
        CreateDialogueBasic(0,0,string(WordWrap("CYNTHIA can be promoted. Do you wish to promote her?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;            
    break;
    
    case 805:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 798:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 799:
        if(YesNoAnswer = 'yes'){
                State = 800;
            AnswerwasGiven[6] = true;
            CutscenePromo();
        }
        else{
            State = 805;
            AnswerwasGiven[6] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 806:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;      

    case 800:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 801:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[6] + " was promoted to PRST " ,200,'#',false)),self.id,true);
        global.Promoted[6] = 1;
        global.Level[6] = 1;
        global.Class[6] = 'PRST';           
    break;         
    
    case 9:
        State = 898;
        CreateDialogueBasic(0,0,string(WordWrap("KNUCKLES can be promoted. Do you wish to promote him?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;         
    break;

    case 905:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 898:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 899:
        if(YesNoAnswer = 'yes'){
                State = 900;
            AnswerwasGiven[7] = true;
            CutscenePromo();
        }
        else{
            State = 905;
            AnswerwasGiven[7] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 906:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;      
    
    case 900:
        State += 1;
        PanOutDialogueBasic();    
    break;    
    
    case 901:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[7] + " was promoted to MMNK " ,200,'#',false)),self.id,true);
        global.Promoted[7] = 1;
        global.Level[7] = 1;
        global.Class[7] = 'MMNK';                    
    break;
        
    case 11:
        State = 1098;
        CreateDialogueBasic(0,0,string(WordWrap("RUBURAN can be promoted. Do you wish to promote him?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1105:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1098:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1099:
        if(YesNoAnswer = 'yes'){
                State = 1100;
            AnswerwasGiven[8] = true;
            CutscenePromo();
        }
        else{
            State = 1105;
            AnswerwasGiven[8] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 1106:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;      
    
    case 1100:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1101:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[8] + " was promoted to NINJ " ,200,'#',false)),self.id,true);
        global.Promoted[8] = 1;
        global.Level[8] = 1;
        global.Class[8] = 'NINJ';                     
    break;
    
    case 12:
        State = 1198;
        CreateDialogueBasic(0,0,string(WordWrap("KIDDO can be promoted. Do you wish to promote him?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1205:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1198:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1199:
        if(YesNoAnswer = 'yes'){
                State = 1200;
            AnswerwasGiven[9] = true;
            CutscenePromo();
        }
        else{
            State = 1205;
            AnswerwasGiven[9] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 1206:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;      
    
    case 1200:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1201:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[9] + " was promoted to BTLR " ,200,'#',false)),self.id,true);
        global.Promoted[9] = 1;
        global.Level[9] = 1;
        global.Class[9] = 'BTLR';                     
    break;     
 
 case 13:
        State = 1298;
        CreateDialogueBasic(0,0,string(WordWrap("SYLVIA can be promoted. Do you wish to promote her?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1305:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1298:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1299:
        if(YesNoAnswer = 'yes'){
                State = 1300;
            AnswerwasGiven[10] = true;
            CutscenePromo();
        }
        else{
            State = 1305;
            AnswerwasGiven[10] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 1306:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;      
    
    case 1300:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1301:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[10] + " was promoted to PLDN " ,200,'#',false)),self.id,true);
        global.Promoted[10] = 1;
        global.Level[10] = 1;
        global.Class[10] = 'PLDN';                     
    break;    
            
    case 14:
        State = 1398;
        CreateDialogueBasic(0,0,string(WordWrap("JULIA can be promoted. Do you wish to promote her?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1405:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1398:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1399:
        if(YesNoAnswer = 'yes'){
                State = 1400;
            AnswerwasGiven[11] = true;
            CutscenePromo();
        }
        else{
            State = 1405;
            AnswerwasGiven[11] = true;
            No_given = true;
            CutscenePromo();
        } 
    break;    
    
    case 1406:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("You can be promoted another time if you wish! ",200,'#',false)),self.id,true);
    break;      
    
    case 1400:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1401:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[11] + " was promoted to BTLR " ,200,'#',false)),self.id,true);
        global.Promoted[11] = 1;
        global.Level[11] = 1;
        global.Class[11] = 'BTLR';                     
    break;    
        
    case 100:
        State = 104;     
        CreateDialogueBasic(0,0,string(WordWrap("It seems nobody can be promoted!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 104:
        State = 102;
        PanOutDialogueBasic();    
    break;    
    
    
    case 101:
        State += 1;
    break;
    
    case 102:
        State += 1;
         for (i = 0; i < 19; i++){
            global.Health[i] = global.MaxHealth[i];            
         }
        room_goto(Town1);
    break;

}
