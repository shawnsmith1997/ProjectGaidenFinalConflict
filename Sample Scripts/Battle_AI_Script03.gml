//AI

var Character;//The guy doing the pathfinding
Character = argument0;

if(global.BattleState = 1){
    if(Character.SubID = 1){//Closest Wolf
        var Target;
            if (( Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1041) and Character.Magic > 10){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }        
            else if ((Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046 ) and Character.Magic > 5){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ((Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
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
    else{//Second guy (or group of guys)
        var Target;
            if (( Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1041 ) and Character.Magic > 10){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }          
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 5){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else{
            Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, slowly move towards target
            AI_DoNothing(Character);
        }
    }
}
else if(global.BattleState = 2){
    if((Character.SubID = 2)){
        var Target;
            if (( Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1041 ) and Character.Magic > 10){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }          
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 5){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
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
            if (( Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1041 ) and Character.Magic > 10){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }          
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 5){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 ) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
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
            if (( Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1041 ) and Character.Magic > 10){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }          
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 5){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
            }
            else{
            Target = FindEnemyTarget(Character);
            }
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            AI_MoveToPoint(Character, Target);
        } 
        else{//we cant attack, slowly move towards target
            AI_DoNothing(Character);
        }
    }
}
else if(global.BattleState = 3){
    if((Character.SubID = 1)||(Character.SubID = 2)){
        var Target;
            if (( Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1041 ) and Character.Magic > 10){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }          
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 5){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 1){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
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
            if (( Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1041 ) and Character.Magic > 10){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 3;
            }          
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 5){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 2;
            }
            else if ( (Character.ID = 1022 or Character.ID = 1021 or Character.ID = 1029  or Character.ID = 1032  or Character.ID = 1038 or Character.ID = 1046) and Character.Magic > 2){
            Target = FindEnemyMagicTarget(Character, 1,2);
            Character.SpellCast = 1;
            Character.SpellCastLevel = 1;
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