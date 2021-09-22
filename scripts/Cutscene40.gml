
//Cutscene 12 (Pre Battle 20)
//can call 'with CutsceneControler' if needbe
switch (State){
    case 0:
        instance_create(0,0,CutsceneCamera);
        instance_create(240,120,CameraTargetObject);
        CutsceneCamera.CameraPathfinding = true;
        view_object[0] = viewing_obj;
        State += 1;
        break;

    case 1:
        State = 3;
        CreateDialogueBasic(30,0,string(WordWrap("Ohohoho... your battles thus far have been most admirable, Ian. This time, Shining Force, I think your capabilities are really going to be put to the test! As such, I've carefully prepared a rather interesting plan for you.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
        break;

    case 2:
        State += 1;
        break;

    case 3:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 4:
        State += 1;
        CreateDialogueBasic(28,0,string(WordWrap("Come out, Mishaela! You're acting like a coward, as usual - do you intend to fight us or not?!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

     case 5:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 6:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(30,0,string(WordWrap("Ohohoho, you're certainly strong, I'll admit that much, however... You'll be no match for him!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 7:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 8:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("There's nothing Ian and the rest of us fear.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 9:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 10:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(30,0,string(WordWrap("Adam, that may be the case so far, but it means nothing against that man.",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 11:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 12:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("What do you mean? ",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 13:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 14:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(30,0,string(WordWrap("I wonder if he's fully recovered yet? I assume so... You used to rely on this man! Well, come out!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 15:
        State = 1000;
        instance_create(288,72,DarkMaxCS);
        PanOutDialogueBasic();
    break;

    case 1000:
    State = 16;
    var Character;
            with(GenericCutsceneNPC){

                if(ID = 1000){
                    Character = self.id;
                    direction = 270;  
                    MoveCharacter(Character,"Down",7,1);                         
                }   
        }  

    break;     
    
    case 16:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("That swordsman's mask....",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 17:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 18:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(30,0,string(WordWrap("Because of the mask he wears, he's been given the powers of darkness, and become a member of the Devil Army. By doing this, he's joined his older brother, Kane, hasn't he?! Ohohohoho! I think this fight's going to be most enjoyable!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 19:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 20:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("What... what's this all about?!!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

case 21:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 22:
        State += 1;
        view_object[0] = viewing_obj2;
        CreateDialogueBasic(30,0,string(WordWrap("You have to try to defeat Max! Well, Max... defeat them!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 23:
        State += 1;
        PanOutDialogueBasic();
    break;

    case 24:
        State += 1;
        view_object[0] = viewing_obj;
        CreateDialogueBasic(28,0,string(WordWrap("It looks like we'll have to fight Master Max... Master Max, please wait! We'll solve this curse, you'll see!",200,'#',false)),self.id,true);
        DialogueControler.Voice = Dialogue5Sound;
    break;

    case 25:
        State += 1;
        PanOutDialogueBasic();
    break;                         

    case 26:
        State += 1;
        room_goto(BattleRoom20);
        instance_destroy();
    break;
}
