//Cutscene 13 (Post Battle 6)
//can call 'with CutsceneControler' if needbe

   switch (State){
   case 0:
        State = 1;
        for (i = 0; i<19; i++){
        AnswerwasGiven[i] = false;
        }
        buffer = 0;
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
        if (global.IsDead[2] = true and AnswerwasGiven[2] = false)
        {
        State = 4;
        }
        else if (global.IsDead[3] = true and AnswerwasGiven[3] = false)
        {
        State = 5;
        }
        else if (global.IsDead[4] = true and AnswerwasGiven[4] = false)
        {
        State = 6;
        }
        else if (global.IsDead[5] = true and AnswerwasGiven[5] = false)
        {
        State = 7;
        }
        else if (global.IsDead[6] = true and AnswerwasGiven[6] = false)
        {
        State = 8;
        }
        else if (global.IsDead[7] = true and AnswerwasGiven[7] = false)
        {
        State = 9;
        }
        else if (global.IsDead[8] = true and AnswerwasGiven[8] = false)
        {
        State = 11;
        }
        else if (global.IsDead[9] = true and AnswerwasGiven[9] = false)
        {
        State = 12;
        }
        else if (global.IsDead[10] = true and AnswerwasGiven[10] = false)
        {
        State = 13;
        }
        else if (global.IsDead[11] = true and AnswerwasGiven[11] = false)
        {
        State = 14;
        }
        else if (global.IsDead[12] = true and AnswerwasGiven[12] = false)
        {
        State = 15;
        }
        else if (global.IsDead[13] = true and AnswerwasGiven[13] = false)
        {
        State = 16;
        }
        else if (global.IsDead[14] = true and AnswerwasGiven[14] = false)
        {
        State = 17;
        }
        else if (global.IsDead[15] = true and AnswerwasGiven[15] = false)
        {
        State = 18;
        }
        else if (global.IsDead[16] = true and AnswerwasGiven[16] = false)
        {
        State = 19;
        }
        else if (global.IsDead[17] = true and AnswerwasGiven[17] = false)
        {
        State = 20;
        }
        else if (global.IsDead[18] = true and AnswerwasGiven[18] = false)
        {
        State = 21;
        }
        else if (global.IsDead[19] = true and AnswerwasGiven[19] = false)
        {
        State = 22;
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
    
    case 4:
        State = 398;
        buffer = (global.Level[2]*10 + global.Promoted[2]*10*global.Level[2] + global.Promoted[2]*100);
        CreateDialogueBasic(0,0,string(WordWrap("MEAD is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 405;
            AnswerwasGiven[2] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 406:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;       
    
    case 400:
        State += 1;
        PanOutDialogueBasic();    
    break;

    case 401:
        State = 2;
        if (global.Gold >= (global.Level[2]*10 + global.Promoted[2]*10*global.Level[2] + global.Promoted[2]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("MEAD has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[2] = false;
        global.Gold -= (global.Level[2]*10 + global.Promoted[2]*10*global.Level[2] + global.Promoted[2]*100);
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
        buffer = (global.Level[3]*10 + global.Promoted[3]*10*global.Level[3] + global.Promoted[3]*100);
        CreateDialogueBasic(0,0,string(WordWrap("SONETTE is exahausted! To return the soul it will cost " + string(buffer) + "G@",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 505;
            AnswerwasGiven[3] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 506:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;     
        
    case 501:        
        State = 2;
        if (global.Gold >= (global.Level[3]*10 + global.Promoted[3]*10*global.Level[3] + global.Promoted[3]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("SONETTE has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[3] = false;
        global.Gold -= (global.Level[3]*10 + global.Promoted[3]*10*global.Level[3] + global.Promoted[3]*100);
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }           
    break;    
    
    case 6:
    State = 598;
    buffer = (global.Level[4]*10 + global.Promoted[4]*10*global.Level[4] + global.Promoted[4]*100);
        CreateDialogueBasic(0,0,string(WordWrap("PAIGE is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 605;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 606:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 601:
        State = 2;
        if (global.Gold >= (global.Level[4]*10 + global.Promoted[4]*10*global.Level[4] + global.Promoted[4]*100)){    
        CreateDialogueBasic(0,0,string(WordWrap("PAIGE has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[4] = false;
        global.Gold -= (global.Level[4]*10 + global.Promoted[4]*10*global.Level[4] + global.Promoted[4]*100);
        sound_play(revive_party_member);
        }      
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }    
    break;      
    
    case 7:
        State = 698;
        buffer = (global.Level[5]*10 + global.Promoted[5]*10*global.Level[5] + global.Promoted[5]*100);
        CreateDialogueBasic(0,0,string(WordWrap("HAWEL is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;   
    break;
    
    case 701:
        State = 2;
        if (global.Gold >= (global.Level[5]*10 + global.Promoted[5]*10*global.Level[5] + global.Promoted[5]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("HAWEL has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[5] = false;
        global.Gold -= (global.Level[5]*10 + global.Promoted[5]*10*global.Level[5] + global.Promoted[5]*100);
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
            CutscenePriest();
        }
        else{
            State = 705;
            AnswerwasGiven[5] = true;
            CutscenePriest();
        } 
    break;    
    
    case 706:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;   

    case 700:
        State += 1;
        PanOutDialogueBasic();    
    break;    
        
    case 8:
        State = 798;
        buffer = (global.Level[6]*10 + global.Promoted[6]*10*global.Level[6] + global.Promoted[6]*100);
        CreateDialogueBasic(0,0,string(WordWrap("CYNTHIA is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 805;
            AnswerwasGiven[6] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 806:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      

    case 800:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 801:
        State = 2;
        if (global.Gold >= (global.Level[6]*10 + global.Promoted[6]*10*global.Level[6] + global.Promoted[6]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("CYNTHIA has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[6] = false;
        global.Gold -= (global.Level[6]*10 + global.Promoted[6]*10*global.Level[6] + global.Promoted[6]*100);
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }          
    break;         
    
    case 9:
        State = 898;
        buffer = (global.Level[7]*10 + global.Promoted[7]*10*global.Level[7] + global.Promoted[7]*100);
        CreateDialogueBasic(0,0,string(WordWrap("KNUCKLES is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 905;
            AnswerwasGiven[7] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 906:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 900:
        State += 1;
        PanOutDialogueBasic();    
    break;    
    
    case 901:
        State = 2;
        if (global.Gold >= (global.Level[7]*10 + global.Promoted[7]*10*global.Level[7] + global.Promoted[7]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("KNUCKLES has been revived! ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[7] = false;
        global.Gold -= (global.Level[7]*10 + global.Promoted[7]*10*global.Level[7] + global.Promoted[7]*100);
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
        
    case 11:
        State = 1098;
        buffer = (global.Level[8]*10 + global.Promoted[8]*10*global.Level[8] + global.Promoted[8]*100);
        CreateDialogueBasic(0,0,string(WordWrap("RUBURAN is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 1105;
            AnswerwasGiven[8] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1106:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1100:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1101:
        State = 2;
        if (global.Gold >= (10*global.Level[8]+ global.Promoted[8]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("RUBURAN has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[8] = false;
        global.Gold -= (global.Level[8]*10 + global.Promoted[8]*10*global.Level[8] + global.Promoted[8]*100);
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 12:
        State = 1198;
        buffer = (global.Level[9]*10 + global.Promoted[9]*10*global.Level[9] + global.Promoted[9]*100);
        CreateDialogueBasic(0,0,string(WordWrap("KIDDO is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 1205;
            AnswerwasGiven[9] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1206:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1200:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1201:
        State = 2;
        if (global.Gold >= (global.Level[9]*10 + global.Promoted[9]*10*global.Level[9] + global.Promoted[9]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("KIDDO has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[9] = false;
        global.Gold -= (global.Level[9]*10 + global.Promoted[9]*10*global.Level[9] + global.Promoted[9]*100);
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 13:
        State = 1298;
        buffer = (global.Level[10]*10 + global.Promoted[10]*10*global.Level[10] + global.Promoted[10]*100);
        CreateDialogueBasic(0,0,string(WordWrap("SYLVIA is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 1305;
            AnswerwasGiven[10] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1306:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1300:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1301:
        State = 2;
        if (global.Gold >= (global.Level[10]*10 + global.Promoted[10]*10*global.Level[10] + global.Promoted[10]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("SYLVIA has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[10] = false;
        global.Gold -= (global.Level[10]*10 + global.Promoted[10]*10*global.Level[10] + global.Promoted[10]*100);
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 14:
        State = 1398;
        buffer = (global.Level[11]*10 + global.Promoted[11]*10*global.Level[11] + global.Promoted[11]*100);
        CreateDialogueBasic(0,0,string(WordWrap("JULIA is exahausted! To return the soul it will cost " + string(buffer) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 1405;
            AnswerwasGiven[11] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1406:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1400:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1401:
        State = 2;
        if (global.Gold >= (global.Level[11]*10 + global.Promoted[11]*10*global.Level[11] + global.Promoted[11]*100)){
        CreateDialogueBasic(0,0,string(WordWrap("JULIA has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[11] = false;
        global.Gold -= (global.Level[11]*10 + global.Promoted[11]*10*global.Level[11] + global.Promoted[11]*100);
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;                   

    case 15:
        State = 1498;
        CreateDialogueBasic(0,0,string(WordWrap("ERIC is exahausted! To return the soul it will cost " + string(global.Level[12] * 20 + 100) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 1505;
            AnswerwasGiven[12] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1506:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1500:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1501:
        State = 2;
        if (global.Gold >= (2*10*global.Level[12] + 100)){
        CreateDialogueBasic(0,0,string(WordWrap("ERIC has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[12] = false;
        global.Gold -= 2*10*global.Level[12] + 100;
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 16:
        State = 1598;
        CreateDialogueBasic(0,0,string(WordWrap("MINTO is exahausted! To return the soul it will cost " + string(global.Level[13] * 20 + 100) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 1605;
            AnswerwasGiven[13] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1606:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1600:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1601:
        State = 2;
        if (global.Gold >= (2*10*global.Level[13] + 100)){
        CreateDialogueBasic(0,0,string(WordWrap("MINTO has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[13] = false;
        global.Gold -= 2*10*global.Level[13] + 100;
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 17:
        State = 1698;
        CreateDialogueBasic(0,0,string(WordWrap("MORTON is exahausted! To return the soul it will cost " + string(global.Level[14] * 20 + 100) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 1705;
            AnswerwasGiven[14] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1706:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1700:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1701:
        State = 2;
        if (global.Gold >= (2*10*global.Level[14] + 100)){
        CreateDialogueBasic(0,0,string(WordWrap("MORTON has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[14] = false;
        global.Gold -= 2*10*global.Level[14] + 100;
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 18:
        State = 1798;
        CreateDialogueBasic(0,0,string(WordWrap("SASUKE is exahausted! To return the soul it will cost " + string(global.Level[15] * 20 + 100) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 1805;
            AnswerwasGiven[15] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1806:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1800:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1801:
        State = 2;
        if (global.Gold >= (2*10*global.Level[15] + 100)){
        CreateDialogueBasic(0,0,string(WordWrap("SASUKE has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[15] = false;
        global.Gold -= 2*10*global.Level[15] + 100;
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;
    
    case 19:
        State = 1898;
        CreateDialogueBasic(0,0,string(WordWrap("RIDION is exahausted! To return the soul it will cost " + string(global.Level[16] * 20 + 100) + "G",200,'#',false)),self.id,true);
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
                State = 1900;
            AnswerwasGiven[16] = true;
            CutscenePriest();
        }
        else{
            State = 1905;
            AnswerwasGiven[16] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 1906:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 1900:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 1901:
        State = 2;
        if (global.Gold >= (2*10*global.Level[16] + 100)){
        CreateDialogueBasic(0,0,string(WordWrap("RIDION has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[16] = false;
        global.Gold -= 2*10*global.Level[16] + 100;
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break; 
    
    case 20:
        State = 1998;
        CreateDialogueBasic(0,0,string(WordWrap("KOJIROU is exahausted! To return the soul it will cost " + string(global.Level[17] * 20 + 100) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 2005;
            AnswerwasGiven[17] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 2006:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 2000:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 2001:
        State = 2;
        if (global.Gold >= (2*10*global.Level[17] + 100)){
        CreateDialogueBasic(0,0,string(WordWrap("KOJIROU has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[17] = false;
        global.Gold -= 2*10*global.Level[17] + 100;
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break; 
    
    
    case 21:
        State = 2098;
        CreateDialogueBasic(0,0,string(WordWrap("MAX is exahausted! To return the soul it will cost " + string(global.Level[18] * 20 + 100) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 2105;
            AnswerwasGiven[18] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 2106:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 2100:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 2101:
        State = 2;
        if (global.Gold >= (2*10*global.Level[18] + 100)){
        CreateDialogueBasic(0,0,string(WordWrap("MAX has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[18] = false;
        global.Gold -= 2*10*global.Level[18] + 100;
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break; 
    
    case 22:
        State = 2198;
        CreateDialogueBasic(0,0,string(WordWrap("ODDEYE is exahausted! To return the soul it will cost " + string(global.Level[19] * 20 + 100) + "G",200,'#',false)),self.id,true);
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
            CutscenePriest();
        }
        else{
            State = 2205;
            AnswerwasGiven[19] = true;
            No_given = true;
            CutscenePriest();
        } 
    break;    
    
    case 2206:
        State = 2;
        CreateDialogueBasic(0,0,string(WordWrap("Oh gosh the poor soul! ",200,'#',false)),self.id,true);
    break;      
    
    case 2200:
        State += 1;
        PanOutDialogueBasic();    
    break;   
    
    case 2201:
        State = 2;
        if (global.Gold >= (2*10*global.Level[19] + 100)){
        CreateDialogueBasic(0,0,string(WordWrap("ODDEYE has been revived!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        global.IsDead[19] = false;
        global.Gold -= 2*10*global.Level[19] + 100;
        sound_play(revive_party_member);
        }
        else{
        CreateDialogueBasic(0,0,string(WordWrap("You do not have enough gold. Oh gosh the poor soul!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        }                   
    break;                             
    
              
        
    case 100:
        State = 104;     
        CreateDialogueBasic(0,0,string(WordWrap("It seems nobody is exhausted!",200,'#',false)),self.id,true);
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
