//AI

var Character;//The guy doing the pathfinding
Character = argument0;

if(global.BattleState = 1){
    if(Character.SubID = 1){//Closest Wolf
        var Target;
            if (Character.ID = 1010 and Character.Magic > 4){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1010 or Character.ID = 2000 ) and Character.Magic > 1){
                Target = FindEnemyMagicTarget(Character, 1,1);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 1;
            }
            else if (Character.ID = 1100){
                Target = FindEnemyMagicTarget(Character, 1,1);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 1;
            }                 
            else if ((Character.ID = 1053)){
                Target = FindEnemyMagicTarget(Character, 1,1);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1021) and Character.Magic > 5){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1022) and Character.Magic > 5){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1046) and Character.Magic > 14){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }
            /*else if ((Character.ID = 1047) and Character.Magic > 9){
                Target = FindEnemyMagicTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }*/
            else if ((Character.ID = 1038) and Character.Magic > 19){
                Target = FindEnemyMagicTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }
            else if ((Character.ID = 1048) and Character.Magic > 19){
                decisionVariable= random_range(0, 1);
                //show_message(decisionVariable);
                if (decisionVariable < 0.30){ //Cast Desoul
                    Target = FindEnemyMagicTarget(Character, 2,2);
                    Character.SpellCast = 2;
                    Character.SpellCastLevel = 2;
                }
                else if (decisionVariable >= 0.30 and  decisionVariable < 0.75){ //Cast Bolt
                    Target = FindEnemyMagicTarget(Character, 1,3);
                    Character.SpellCast = 1;
                    Character.SpellCastLevel = 3;
                }                
                else{ //Regular attack
                    Target = FindEnemyTarget(Character);
                }   
            }                           
            else if ((Character.ID = 1054)){
                Target = FindEnemyMagicTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            } 
            else if ((Character.ID = 1053)){
                Target = FindEnemyMagicTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            } 
            else if ((Character.ID = 1041) and Character.Magic > 10){
                Target = FindEnemyMagicTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }
            else if ((Character.ID = 1102) and Character.Magic > 10){
                Target = FindEnemyMagicTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }            
            else if ((Character.ID = 1045) and Character.Magic > 7){
                Target = FindEnemyMagicTarget(Character, 1,1);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1049) and Character.Magic > 7){
                Target = FindEnemyMagicTarget(Character, 1,1);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1029) and Character.Magic > 8){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }            
            else if ((Character.ID = 1037) and Character.Magic > 20){
                Target = FindEnemyHealingTarget(Character, 1,4);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 4;
            }
            else if ((Character.ID = 1025) and Character.Magic > 10){
                Target = FindEnemyHealingTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }
            else if ((Character.ID = 1015) and Character.Magic > 5){
                Target = FindEnemyHealingTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1047) and Character.Magic > 10){
                decisionVariable= random_range(0, 1);
                //show_message(decisionVariable);
                if (decisionVariable < 0.30){
                    Target = FindEnemyHealingTarget(Character, 2,3);
                    Character.SpellCast = 2;
                }
                else{
                    Target = FindEnemyMagicTarget(Character, 1,3);
                    Character.SpellCast = 1;
                }
                Character.SpellCastLevel = 3;
            }                                                     
            else{
                Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        }
        else if (Character.ID = 2001){
            RogueAIMoveTowardsTarget(Character,2);
        }  
        else{//we cant attack, slowly move towards target
            AI_MoveTowardsAttackableTarget(Character,3);
        }
    }  
    else{//Second guy (or group of guys)
        var Target;
            if (Character.ID = 1010 and Character.Magic > 4){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1010 or Character.ID = 2000 ) and Character.Magic > 1){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 1;
            }
            else if (Character.ID = 1053){
                Target = FindEnemyMagicTarget(Character, 1,1);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 1;
            }
            else if (Character.ID = 1100){
                Target = FindEnemyMagicTarget(Character, 1,1);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 1;
            }            
            else if ((Character.ID = 1048) and Character.Magic > 19){
                decisionVariable= random_range(0, 1);
                //show_message(decisionVariable);
                if (decisionVariable < 0.30){ //Cast Desoul
                    Target = FindEnemyMagicTarget(Character, 2,2);
                    Character.SpellCast = 2;
                    Character.SpellCastLevel = 2;
                }
                else if (decisionVariable >= 0.30 and  decisionVariable < 0.75){ //Cast Bolt
                    Target = FindEnemyMagicTarget(Character, 1,3);
                    Character.SpellCast = 1;
                    Character.SpellCastLevel = 3;
                }                
                else{ //Regular attack
                    Target = FindEnemyTarget(Character);
                }                 
            }  
            else if ((Character.ID = 1021) and Character.Magic > 5){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }       
            else if ((Character.ID = 1054)){
                Target = FindEnemyMagicTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }
            else if ((Character.ID = 1046) and Character.Magic > 14){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1038) and Character.Magic > 19){
                Target = FindEnemyMagicTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }
            else if ((Character.ID = 1037) and Character.Magic > 20){
                Target = FindEnemyHealingTarget(Character, 1,4);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 4;
            }
            else if ((Character.ID = 1025) and Character.Magic > 10){
                Target = FindEnemyHealingTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }
            else if ((Character.ID = 1015) and Character.Magic > 10){
                Target = FindEnemyHealingTarget(Character, 1,3);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 3;
            }
            else if ((Character.ID = 1029) and Character.Magic > 8){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }               
            else if ((Character.ID = 1047) and Character.Magic > 10){
                decisionVariable= random_range(0, 1);
                //show_message(decisionVariable);
                if (decisionVariable < 0.30){
                    Target = FindEnemyHealingTarget(Character, 2,3);
                    Character.SpellCast = 2;
                }
                else{
                    Target = FindEnemyMagicTarget(Character, 1,3);
                    Character.SpellCast = 1;
                }
                Character.SpellCastLevel = 3;
            }                                                       
            else{
                Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, slowly move towards target
            AI_MoveTowardsAttackableTarget(Character,3);//AI_DoNothing(Character);
        }
    }
}
else if(global.BattleState = 2){
    if((Character.SubID = 2)){
        var Target;
            if (Character.ID = 1010 and Character.Magic > 4){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1010 or Character.ID = 2000 ) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1053)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1029) and Character.Magic > 8){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }                 
            else if ((Character.ID = 1054)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }             
            else{
            Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, slowly move towards target
            AI_MoveTowardsAttackableTarget(Character,3);
        }
    } 
    else if((Character.SubID = 1)){
        var Target;
            if (Character.ID = 1010 and Character.Magic > 4){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1010 or Character.ID = 2000 ) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1029) and Character.Magic > 8){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }               
            else if ((Character.ID = 1053)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1054)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }                           
            else{
            Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, sprint towards target
            AI_MoveTowardsAttackableTarget(Character,10);
        }
    }
    else{//Second guy (or group of guys)
        var Target;
            if (Character.ID = 1010 and Character.Magic > 4){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1010 or Character.ID = 2000 ) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1053)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1029) and Character.Magic > 8){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }               
            else if ((Character.ID = 1054)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }                          
            else{
            Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        } 
        else{//we cant attack, slowly move towards target
            AI_MoveTowardsAttackableTarget(Character,3);//AI_DoNothing(Character);
        }
    }
}
else if(global.BattleState = 3){
    if((Character.SubID = 1)||(Character.SubID = 2)){
        var Target;
            if (Character.ID = 1010 and Character.Magic > 4){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1010 or Character.ID = 2000 ) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1029) and Character.Magic > 8){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }               
            else if ((Character.ID = 1053)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1054)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }                           
            else{
            Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, sprint towards target
            AI_MoveTowardsAttackableTarget(Character,10);
        }
    }
    else{
        var Target;
            if (Character.ID = 1010 and Character.Magic > 5){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1010 or Character.ID = 2000 ) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1029) and Character.Magic > 8){
                Target = FindEnemyMagicTarget(Character, 1,2);
                Character.SpellCast = 1;
                Character.SpellCastLevel = 2;
            }               
            else if ((Character.ID = 1053)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else if ((Character.ID = 1054)){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }                           
            else{
            Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, slowly move towards target
            AI_MoveTowardsAttackableTarget(Character, 3);
        }
    }
}
