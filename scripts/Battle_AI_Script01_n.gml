var Character;//The guy doing the pathfinding
Character = argument0;

if(global.BattleState = 1){
    if(Character.SubID = 1){//Closest Wolf
        var Target;
        Target = FindEnemyTarget(Character);
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            Character.Action = 'Attack';
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, slowly move towards target
            AI_MoveTowardsAttackableTarget(Character,3);
        }
    }  
    else{//Second guy (or group of guys)
        var Target;
        Target = FindEnemyTarget(Character);
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            Character.Action = 'Attack';
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
        Target = FindEnemyTarget(Character);
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            Character.Action = 'Attack';
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, slowly move towards target
            AI_MoveTowardsAttackableTarget(Character,3);
        }
    }
    else if((Character.SubID = 1)){
        var Target;
        Target = FindEnemyTarget(Character);
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            Character.Action = 'Attack';
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, sprint towards target
            AI_MoveTowardsAttackableTarget(Character,10);
        }
    }
    else{//Second guy (or group of guys)
        var Target;
        Target = FindEnemyTarget(Character);
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            Character.Action = 'Attack';
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
        Target = FindEnemyTarget(Character);
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            Character.Action = 'Attack';
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, sprint towards target
            AI_MoveTowardsAttackableTarget(Character,10);
        }
    }
    else{
        var Target;
        Target = FindEnemyTarget(Character);
        if(Target != noone){//We can attack this turn
            Character.CurrentTarget = Target;
            Character.Action = 'Attack';
            AI_MoveToPoint(Character, Target);
        }
        else{//we cant attack, slowly move towards target
            AI_MoveTowardsAttackableTarget(Character, 3);
        }
    }
}