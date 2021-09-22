//PROMO Cutscene
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1;
        for (i = 0; i<20; i++){
        AnswerwasGiven[i] = false;
        }
        No_given = false;
        doneCursed = 0;
        initialized = 0;
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
        if (global.Cursed[1] = 1 and AnswerwasGiven[1] = false)
        {
        State = 40000;
        }        
        else if (global.Cursed[2] = 1 and AnswerwasGiven[2] = false)
        {
        State = 4;
        }
        else if (global.Cursed[3] = 1 and AnswerwasGiven[3] = false)
        {
        State = 5;
        }
        else if (global.Cursed[4] = 1 and AnswerwasGiven[4] = false)
        {
        State = 6;
        }
        else if (global.Cursed[5] = 1 and AnswerwasGiven[5] = false)
        {
        State = 7;
        }
        else if (global.Cursed[6] = 1 and AnswerwasGiven[6] = false)
        {
        State = 8;
        }
        else if (global.Cursed[7] = 1 and AnswerwasGiven[7] = false)
        {
        State = 9;
        }
        else if (global.Cursed[8] = 1 and AnswerwasGiven[8] = false)
        {
        State = 11;
        }  
        else if (global.Cursed[9] = 1 and AnswerwasGiven[9] = false)
        {
        State = 12;
        }   
        else if (global.Cursed[10] = 1 and AnswerwasGiven[10] = false)
        {
        State = 13;
        }
        else if (global.Cursed[11] = 1 and AnswerwasGiven[11] = false)
        {
        State = 14;
        }
        else if (global.Cursed[12] = 1 and AnswerwasGiven[12] = false)
        {
        State = 15;
        }
        else if (global.Cursed[13] = 1 and AnswerwasGiven[13] = false)
        {
        State = 16;
        }
        else if (global.Cursed[14] = 1 and AnswerwasGiven[14] = false)
        {
        State = 17;
        }
        else if (global.Cursed[15] = 1 and AnswerwasGiven[15] = false)
        {
        State = 18;
        }
        else if (global.Cursed[16] = 1 and AnswerwasGiven[16] = false)
        {
        State = 19;
        }   
        else if (global.Cursed[17] = 1 and AnswerwasGiven[17] = false)
        {
        State = 20;
        }
        else if (global.Cursed[18] = 1 and AnswerwasGiven[18] = false)
        {
        State = 21;
        } 
        else if (global.Cursed[19] = 1 and AnswerwasGiven[19] = false)
        {
        State = 22;
        }
        else{
            doneCursed = 1;
        }
        if (doneCursed = 1){
            if(initialized = 0){
                for (i = 0; i<20; i++){
                    AnswerwasGiven[i] = false;
                    initialized = 1;
                }
            }
            if (global.Poisoned[1] = 1 and AnswerwasGiven[1] = false)
            {
            State = 23;
            }        
            else if (global.Poisoned[2] = 1 and AnswerwasGiven[2] = false)
            {
            State = 24;
            }
            else if (global.Poisoned[3] = 1 and AnswerwasGiven[3] = false)
            {
            State = 25;
            }
            else if (global.Poisoned[4] = 1 and AnswerwasGiven[4] = false)
            {
            State = 26;
            }
            else if (global.Poisoned[5] = 1 and AnswerwasGiven[5] = false)
            {
            State = 27;
            }
            else if (global.Poisoned[6] = 1 and AnswerwasGiven[6] = false)
            {
            State = 28;
            }
            else if (global.Poisoned[7] = 1 and AnswerwasGiven[7] = false)
            {
            State = 29;
            }
            else if (global.Poisoned[8] = 1 and AnswerwasGiven[8] = false)
            {
            State = 30;
            }  
            else if (global.Poisoned[9] = 1 and AnswerwasGiven[9] = false)
            {
            State = 31;
            }   
            else if (global.Poisoned[10] = 1 and AnswerwasGiven[10] = false)
            {
            State = 32;
            }
            else if (global.Poisoned[11] = 1 and AnswerwasGiven[11] = false)
            {
            State = 33;
            }
            else if (global.Poisoned[12] = 1 and AnswerwasGiven[12] = false)
            {
            State = 34;
            }
            else if (global.Poisoned[13] = 1 and AnswerwasGiven[13] = false)
            {
            State = 35;
            }
            else if (global.Poisoned[14] = 1 and AnswerwasGiven[14] = false)
            {
            State = 36;
            }
            else if (global.Poisoned[15] = 1 and AnswerwasGiven[15] = false)
            {
            State = 37;
            }
            else if (global.Poisoned[16] = 1 and AnswerwasGiven[16] = false)
            {
            State = 38;
            }   
            else if (global.Poisoned[17] = 1 and AnswerwasGiven[17] = false)
            {
            State = 39;
            }
            else if (global.Poisoned[18] = 1 and AnswerwasGiven[18] = false)
            {
            State = 40;
            } 
            else if (global.Poisoned[19] = 1 and AnswerwasGiven[19] = false)
            {
            State = 41;
            }                                                                                                                                                              
            else if (No_given = true)
            {
            State = 102;
            }
            else
            {
            State = 100;
            }
        }
        PanOutDialogueBasic();
        break;

    case 40000:
        State = 4998;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[1] + " is cursed! It will cost 1250G do you wish you to cure them?" ,200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 5005:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 4998:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 4999:
        if(YesNoAnswer = 'yes'){
                State = 5000;
            AnswerwasGiven[1] = true;
            CutsceneCure();
        }
        else{
            State = 5005;
            AnswerwasGiven[1] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 5006:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;       
    
    case 5000:
        State += 1;
        PanOutDialogueBasic();    
    break;

    case 5001:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[1] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[1] = 0;
            global.Equipped_Weapon[1] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }    
    break;                
                
            
    case 4:
        State = 398;
        CreateDialogueBasic(0,0,string(WordWrap("MEAD is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 405;
            AnswerwasGiven[2] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 406:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;       
    
    case 400:
        State += 1;
        PanOutDialogueBasic();    
    break;

    case 401:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[2] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[2] = 0; 
            global.Equipped_Weapon[2] = 0;          
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }         
    break;        

     case 10:
        State = 2;
        PanOutDialogueBasic();
    break;
    
    case 5:
    State = 498;
        CreateDialogueBasic(0,0,string(WordWrap("SONETTE is cursed! It will cost 1250G do you wish you to cure them?@",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 505;
            AnswerwasGiven[3] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 506:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;     
        
    case 501:        
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[3] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[3] = 0;
            global.Equipped_Weapon[3] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;    
    
    case 6:
    State = 598;
        CreateDialogueBasic(0,0,string(WordWrap("PAIGE is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 605;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 606:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 601:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[4] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[4] = 0;
            global.Equipped_Weapon[4] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }      
    break;      
    
    case 7:
        State = 698;
        CreateDialogueBasic(0,0,string(WordWrap("HAWEL is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;   
    break;
    
    case 701:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[5] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[5] = 0;
            global.Equipped_Weapon[5] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }            
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
            CutsceneCure();
        }
        else{
            State = 705;
            AnswerwasGiven[5] = true;
            CutsceneCure();
        } 
    break;    
    
    case 706:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;   

    case 700:
        State += 1;
        PanOutDialogueBasic();    
    break;    
        
    case 8:
        State = 798;
        CreateDialogueBasic(0,0,string(WordWrap("CYNTHIA is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 805;
            AnswerwasGiven[6] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 806:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      

    case 800:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 801:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[6] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[6] = 0; 
            global.Equipped_Weapon[6] = 0;          
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }        
    break;         
    
    case 9:
        State = 898;
        CreateDialogueBasic(0,0,string(WordWrap("KNUCKLES is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 905;
            AnswerwasGiven[7] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 906:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 900:
        State += 1;
        PanOutDialogueBasic();    
    break;    
    
    case 901:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[7] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[7] = 0;
            global.Equipped_Weapon[7] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
        
    case 11:
        State = 1098;
        CreateDialogueBasic(0,0,string(WordWrap("RUBURAN is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 1105;
            AnswerwasGiven[8] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1106:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1100:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1101:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[8] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[8] = 0;
            global.Equipped_Weapon[8] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 12:
        State = 1198;
        CreateDialogueBasic(0,0,string(WordWrap("KIDDO is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 1205;
            AnswerwasGiven[9] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1206:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1200:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1201:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[9] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[9] = 0;  
            global.Equipped_Weapon[9] = 0;         
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                          
    break;     
 
 case 13:
        State = 1298;
        CreateDialogueBasic(0,0,string(WordWrap("SYLVIA is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 1305;
            AnswerwasGiven[10] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1306:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1300:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1301:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[10] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[10] = 0; 
            global.Equipped_Weapon[10] = 0;          
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                  
    break;    
            
    case 14:
        State = 1398;
        CreateDialogueBasic(0,0,string(WordWrap("JULIA is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            CutsceneCure();
        }
        else{
            State = 1405;
            AnswerwasGiven[11] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1406:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1400:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1401:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[11] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[11] = 0; 
            global.Equipped_Weapon[11] = 0;          
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 15:
        State = 1498;
        CreateDialogueBasic(0,0,string(WordWrap("ERIC is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1505:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1498:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1499:
        if(YesNoAnswer = 'yes'){
                State = 1500;
            AnswerwasGiven[12] = true;
            CutsceneCure();
        }
        else{
            State = 1505;
            AnswerwasGiven[12] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1506:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1500:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1501:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[12] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[12] = 0;
            global.Equipped_Weapon[12] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 16:
        State = 1598;
        CreateDialogueBasic(0,0,string(WordWrap("MINTO is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1605:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1598:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1599:
        if(YesNoAnswer = 'yes'){
                State = 1600;
            AnswerwasGiven[13] = true;
            CutsceneCure();
        }
        else{
            State = 1605;
            AnswerwasGiven[13] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1606:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1600:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1601:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[13] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[13] = 0; 
            global.Equipped_Weapon[13] = 0;          
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 17:
        State = 1698;
        CreateDialogueBasic(0,0,string(WordWrap("MORTON is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1705:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1698:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1699:
        if(YesNoAnswer = 'yes'){
                State = 1700;
            AnswerwasGiven[14] = true;
            CutsceneCure();
        }
        else{
            State = 1705;
            AnswerwasGiven[14] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1706:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1700:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1701:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[14] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[14] = 0; 
            global.Equipped_Weapon[14] = 0;          
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 18:
        State = 1798;
        CreateDialogueBasic(0,0,string(WordWrap("SASUKE is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1805:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1798:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1799:
        if(YesNoAnswer = 'yes'){
                State = 1800;
            AnswerwasGiven[15] = true;
            CutsceneCure();
        }
        else{
            State = 1805;
            AnswerwasGiven[15] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1806:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1800:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1801:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[15] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[15] = 0;
            global.Equipped_Weapon[15] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 19:
        State = 1898;
        CreateDialogueBasic(0,0,string(WordWrap("RIDION is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 1905:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1898:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1899:
        if(YesNoAnswer = 'yes'){
                State = 1800;
            AnswerwasGiven[16] = true;
            CutsceneCure();
        }
        else{
            State = 1805;
            AnswerwasGiven[16] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 1906:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 1900:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1901:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[16] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[16] = 0;
            global.Equipped_Weapon[16] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 20:
        State = 1998;
        CreateDialogueBasic(0,0,string(WordWrap("KOJIROU is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 2005:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 1998:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 1999:
        if(YesNoAnswer = 'yes'){
                State = 2000;
            AnswerwasGiven[17] = true;
            CutsceneCure();
        }
        else{
            State = 2005;
            AnswerwasGiven[17] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2006:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 2000:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 2001:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[17] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[17] = 0;
            global.Equipped_Weapon[17] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 21:
        State = 2098;
        CreateDialogueBasic(0,0,string(WordWrap("MAX is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 2105:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2098:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2099:
        if(YesNoAnswer = 'yes'){
                State = 2100;
            AnswerwasGiven[18] = true;
            CutsceneCure();
        }
        else{
            State = 2105;
            AnswerwasGiven[18] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2106:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 2100:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 2101:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[18] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[18] = 0;
            global.Equipped_Weapon[18] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 22:
        State = 2198;
        CreateDialogueBasic(0,0,string(WordWrap("ODDEYE is cursed! It will cost 1250G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 2205:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2198:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2199:
        if(YesNoAnswer = 'yes'){
                State = 2200;
            AnswerwasGiven[19] = true;
            CutsceneCure();
        }
        else{
            State = 2205;
            AnswerwasGiven[19] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2206:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 2200:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 2201:
        State = 2;
        if (global.Gold >= 1250){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[19] + " is no longer cursed!" ,200,'#',false)),self.id,true);
            global.Cursed[19] = 0;
            global.Equipped_Weapon[19] = 0;           
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 1250;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
/////////////////////////////////////////////////////////////////



//POISONED




///////////////////////////////////////////////////////////////////        
 
    case 23:
        State = 2298;
        CreateDialogueBasic(0,0,string(WordWrap(global.Name[1] + " is Poisoned! It will cost 10G do you wish you to cure them?" ,200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 2305:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2298:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2299:
        if(YesNoAnswer = 'yes'){
                State = 2300;
            AnswerwasGiven[1] = true;
            CutsceneCure();
        }
        else{
            State = 2305;
            AnswerwasGiven[1] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2306:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;       
    
    case 2300:
        State += 1;
        PanOutDialogueBasic();    
    break;

    case 2301:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[1] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[1] = 0;      
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }    
    break;                
                
            
    case 24:
        State = 2398;
        CreateDialogueBasic(0,0,string(WordWrap("MEAD  is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;
    
    case 2405:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2398:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2399:
        if(YesNoAnswer = 'yes'){
                State = 2400;
            AnswerwasGiven[2] = true;
            CutsceneCure();
        }
        else{
            State = 2405;
            AnswerwasGiven[2] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2406:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;       
    
    case 2400:
        State += 1;
        PanOutDialogueBasic();    
    break;

    case 2401:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[2] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[2] = 0;     
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }         
    break;        

     /*case 10:
        State = 2;
        PanOutDialogueBasic();
    break;*/
    
    case 25:
    State = 2498;
        CreateDialogueBasic(0,0,string(WordWrap("SONETTE is Poisoned! It will cost 10G do you wish you to cure them?@",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound; 
        DisableDialogueBasic(false);
    break;
    
    case 2500:
        State += 1;
        PanOutDialogueBasic()
    break;    
    
    case 2505:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
 case 2498:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2499:
        if(YesNoAnswer = 'yes'){
                State = 2500;
            AnswerwasGiven[3] = true;
            CutsceneCure();
        }
        else{
            State = 2505;
            AnswerwasGiven[3] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2506:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;     
        
    case 2501:        
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[3] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[3] = 0;      
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;    
    
    case 26:
    State = 2598;
        CreateDialogueBasic(0,0,string(WordWrap("PAIGE is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 2600:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2605:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2598:
        State += 1;
        AnswerwasGiven[4] = true;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2599:
        if(YesNoAnswer = 'yes'){
                State = 2600;
            AnswerwasGiven[4] = true;
            CutsceneCure();
        }
        else{
            State = 2605;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2606:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 2601:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[4] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[4] = 0;        
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }      
    break;      
    
    case 27:
        State = 2698;
        CreateDialogueBasic(0,0,string(WordWrap("HAWEL is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;   
    break;
    
    case 2701:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[5] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[5] = 0;      
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }            
    break;  
    
    case 2705:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2698:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2699:
        if(YesNoAnswer = 'yes'){
                State = 2700;
            AnswerwasGiven[5] = true;
            CutsceneCure();
        }
        else{
            State = 2705;
            AnswerwasGiven[5] = true;
            CutsceneCure();
        } 
    break;    
    
    case 2706:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;   

    case 2700:
        State += 1;
        PanOutDialogueBasic();    
    break;    
        
    case 28:
        State = 2798;
        CreateDialogueBasic(0,0,string(WordWrap("CYNTHIA is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;            
    break;
    
    case 2805:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2798:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2799:
        if(YesNoAnswer = 'yes'){
            State = 2800;
            AnswerwasGiven[6] = true;
            CutsceneCure();
        }
        else{
            State = 2805;
            AnswerwasGiven[6] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2806:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      

    case 2800:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 2801:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[6] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[6] = 0;       
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }        
    break;         
    
    case 29:
        State = 2898;
        CreateDialogueBasic(0,0,string(WordWrap("KNUCKLES is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;         
    break;

    case 2905:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2898:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2899:
        if(YesNoAnswer = 'yes'){
                State = 2900;
            AnswerwasGiven[7] = true;
            CutsceneCure();
        }
        else{
            State = 2905;
            AnswerwasGiven[7] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 2906:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 2900:
        State += 1;
        PanOutDialogueBasic();    
    break;    
    
    case 2901:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[7] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[7] = 0;        
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
        
    case 30:
        State = 2998;
        CreateDialogueBasic(0,0,string(WordWrap("RUBURAN is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3005:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 2998:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 2999:
        if(YesNoAnswer = 'yes'){
                State = 3000;
            AnswerwasGiven[8] = true;
            CutsceneCure();
        }
        else{
            State = 3005;
            AnswerwasGiven[8] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3006:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3000:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3001:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[8] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[8] = 0;         
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 31:
        State = 3098;
        CreateDialogueBasic(0,0,string(WordWrap("KIDDO is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3105:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3098:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3099:
        if(YesNoAnswer = 'yes'){
                State = 3100;
            AnswerwasGiven[9] = true;
            CutsceneCure();
        }
        else{
            State = 3105;
            AnswerwasGiven[9] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3106:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3100:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3101:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[9] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[9] = 0;        
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                          
    break;     
 
 case 32:
        State = 3198;
        CreateDialogueBasic(0,0,string(WordWrap("SYLVIA is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3205:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3198:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3199:
        if(YesNoAnswer = 'yes'){
                State = 3200;
            AnswerwasGiven[10] = true;
            CutsceneCure();
        }
        else{
            State = 3205;
            AnswerwasGiven[10] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3206:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3200:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3201:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[10] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[10] = 0;      
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                  
    break;    
            
    case 33:
        State = 3298;
        CreateDialogueBasic(0,0,string(WordWrap("JULIA is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3305:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3298:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3299:
        if(YesNoAnswer = 'yes'){
                State = 3300;
            AnswerwasGiven[11] = true;
            CutsceneCure();
        }
        else{
            State = 3305;
            AnswerwasGiven[11] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3306:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3300:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3301:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[11] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[11] = 0;         
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 34:
        State = 3398;
        CreateDialogueBasic(0,0,string(WordWrap("ERIC is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3405:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3398:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3399:
        if(YesNoAnswer = 'yes'){
                State = 3400;
            AnswerwasGiven[12] = true;
            CutsceneCure();
        }
        else{
            State = 3405;
            AnswerwasGiven[12] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3406:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3400:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3401:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[12] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[12] = 0;         
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 35:
        State = 3498;
        CreateDialogueBasic(0,0,string(WordWrap("MINTO is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3505:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3498:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3499:
        if(YesNoAnswer = 'yes'){
                State = 3500;
            AnswerwasGiven[13] = true;
            CutsceneCure();
        }
        else{
            State = 3505;
            AnswerwasGiven[13] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3506:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3500:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3501:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[13] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[13] = 0;         
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 36:
        State = 3598;
        CreateDialogueBasic(0,0,string(WordWrap("MORTON is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3605:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3598:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3599:
        if(YesNoAnswer = 'yes'){
                State = 3600;
            AnswerwasGiven[14] = true;
            CutsceneCure();
        }
        else{
            State = 3605;
            AnswerwasGiven[14] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3606:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3600:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3601:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[14] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[14] = 0;        
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 37:
        State = 3698;
        CreateDialogueBasic(0,0,string(WordWrap("SASUKE is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3705:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3698:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3699:
        if(YesNoAnswer = 'yes'){
                State = 3700;
            AnswerwasGiven[15] = true;
            CutsceneCure();
        }
        else{
            State = 3705;
            AnswerwasGiven[15] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3706:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3700:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3701:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[15] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[15] = 0;        
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 38:
        State = 3798;
        CreateDialogueBasic(0,0,string(WordWrap("RIDION is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3805:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3798:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3799:
        if(YesNoAnswer = 'yes'){
                State = 3800;
            AnswerwasGiven[16] = true;
            CutsceneCure();
        }
        else{
            State = 3805;
            AnswerwasGiven[16] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3806:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3800:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3801:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[16] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[16] = 0;         
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 39:
        State = 3898;
        CreateDialogueBasic(0,0,string(WordWrap("KOJIROU is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 3905:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 3898:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 3899:
        if(YesNoAnswer = 'yes'){
                State = 3900;
            AnswerwasGiven[17] = true;
            CutsceneCure();
        }
        else{
            State = 3905;
            AnswerwasGiven[17] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 3906:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 3900:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 3901:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[17] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[17] = 0;         
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 40:
        State = 3998;
        CreateDialogueBasic(0,0,string(WordWrap("MAX is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
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
            AnswerwasGiven[18] = true;
            CutsceneCure();
        }
        else{
            State = 4005;
            AnswerwasGiven[18] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 4006:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 4000:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 4001:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[18] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[18] = 0;          
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;
    
    case 41:
        State = 4098;
        CreateDialogueBasic(0,0,string(WordWrap("ODDEYE is Poisoned! It will cost 10G do you wish you to cure them?",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;              
    break;

    case 4105:
        State += 1;
        PanOutDialogueBasic();    
    break; 
    
    case 4098:
        State += 1;
        CreateYesNoBasic(self.id); 
    break;    
          
    case 4099:
        if(YesNoAnswer = 'yes'){
                State = 4100;
            AnswerwasGiven[19] = true;
            CutsceneCure();
        }
        else{
            State = 4105;
            AnswerwasGiven[19] = true;
            No_given = true;
            CutsceneCure();
        } 
    break;    
    
    case 4106:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh Heavens! ",200,'#',false)),self.id,true);
    break;      
    
    case 4100:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 4101:
        State = 2;
        if (global.Gold >= 10){
            CreateDialogueBasic(0,0,string(WordWrap(global.Name[19] + " is no longer Poisoned!" ,200,'#',false)),self.id,true);
            global.Poisoned[19] = 0;         
            DialogueControler.Voice = Dialogue5Sound;
            global.Gold -= 10;
            sound_play(revive_party_member);
        }
        else{
            CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
            DialogueControler.Voice = Dialogue5Sound;
        }                
    break;

                                                    
    case 100:
        State = 104;     
        CreateDialogueBasic(0,0,string(WordWrap("It seems nobody needs to be cured!",200,'#',false)),self.id,true);
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
        room_goto(Town1);
    break;

}
