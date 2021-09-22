//Returns the sprite of the character based on arguments given.
//argument0 = character's ID number
//argument1 = Sprite to return
//General Rules (though, you dont really need to follow this... it just helps)
//0 is a null ID 
//ID 1-999 is for force members
//ID 1000-1999 is for enemies
//ID 2000-2999 is for NPCs
//Basically ^^^ just keeps everything sorted in unison.

var Sprite, SpriteArg, ID;
ID = argument0;
SpriteArg = argument1;
Sprite = BlankSprite;
image_speed = 60;

//Jason
if(ID = 1){
    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[1] = 0){
            Sprite = JasonAttack;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaosAttack;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDarkAttack;
        }
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoAttack;
        }
        
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[1] = 0){
            Sprite = JasonIdle;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaos;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDark;
        }          
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoIdle;
        }
        
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[1] = 0){
            Sprite = JasonBlock;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaosBlock;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDarkBlock;
        }             
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoBlock;
        }
        
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[1] = 0){
            Sprite = JasonIdle;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaos;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDark;
        }          
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoIdle;
        }
     
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[1] = 0){
            Sprite = IanPreCast;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaosAttack;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDarkAttack;
        }          
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoAttack;
        }
        
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[1] = 0){
            Sprite = JasonIdle;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaos;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDark;
        }          
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoIdle;
        }
     
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[1] = 0){
            Sprite = IanPreCast;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaosAttack;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDarkAttack;
        }          
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoAttack;
        }
      
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = JasonIdle;        
        if (global.Promoted[1] = 0){
            Sprite = JasonIdle;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaos;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDark;
        }          
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoIdle;
        }
         }
    else{//Idle Animation
        
        if (global.Promoted[1] = 0){
            Sprite = JasonIdle;
        }
        else if (global.Items[1,global.Equipped_Weapon[1]] = 60){
            Sprite = IanWChaos;
        } 
        else if (global.Items[1,global.Equipped_Weapon[1]] = 56){
            Sprite = IanWDark;
        }               
        else if (global.Promoted[1] = 1){
            Sprite = IanPromoIdle;
        }
     
    }
}

//Max
else if(ID = 2){

    if(SpriteArg = 'Attack'){//Swing weapon
 
        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadAttackBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadAttackSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadAttackChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadAttackValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadAttackSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadAttackPowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceAttack; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceAttack; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceAttack; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieAttack; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearAttack; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearAttack; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceAttack; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadAttackSteelLance; //lance
        }                           
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack

        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadIdleBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadIdleSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadIdleChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadIdleValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadIdleSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadIdlePowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearIdle; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadIdleSteelLance; //lance
        }            
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadBlockBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadBlockSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadBlockChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadBlockValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadBlockSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadBlockPowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceBlock; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceBlock; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceBlock; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieBlock; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearBlock; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearBlock; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceBlock; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadBlockSteelLance; //lance
        }            
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadIdleBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadIdleSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadIdleChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadIdleValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadIdleSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadIdlePowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearIdle; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadIdleSteelLance; //lance
        }           
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadCastBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadCastSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadCastChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadCastValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadCastSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadCastPowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceCast; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceCast; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceCast; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieCast; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearCast; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearCast; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceCast; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadCastSteelLance; //lance
        }        
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadIdleBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadIdleSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadIdleChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadIdleValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadIdleSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadIdlePowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearIdle; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadIdleSteelLance; //lance
        }            
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadCastBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadCastSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadCastChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadCastValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadCastSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadCastPowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceCast; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceCast; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceCast; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieCast; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearCast; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearCast; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceCast; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadCastSteelLance; //lance
        }            
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadIdleBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadIdleSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadIdleChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadIdleValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadIdleSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadIdlePowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearIdle; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadIdleSteelLance; //lance
        }           
    }
    else{//Idle Animation
        
        if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadIdleBronzeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadIdleSteelLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadIdleChromeLance; //lance
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadIdleValkyrieLance; //lance
        }                              
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadIdleSpear; //Spear
        }
        else if (global.Promoted[2] = 0 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadIdlePowerSpear; //Spear
        }                          
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 27){
            Sprite = MeadPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 30){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 39){
            Sprite = MeadPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 46){
            Sprite = MeadPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 7){
            Sprite = MeadPromoSpearIdle; //Spear
        }
        else if (global.Promoted[2] = 1 and global.Items[2,global.Equipped_Weapon[2]] = 38){
            Sprite = MeadPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[2] = 1){
            Sprite = MeadPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[2] = 0){
            Sprite = MeadIdleSteelLance; //lance
        }           
   
    }
}

//Sonette
else if(ID = 3){

    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteAttack;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoAttack;
        }
   
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteIdle;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoIdle;
        }
   
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteBlock;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoBlock;
        }
   
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteIdle;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoIdle;
        }
   
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteCast;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoCast;
        }
   
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteIdle;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoIdle;
        }
   
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteCast;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoCast;
        }
   
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteIdle;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoIdle;
        }
   
    }
    else{//Idle Animation
        
        if (global.Promoted[3] = 0){
            Sprite = SonetteIdle;
        }
        else if (global.Promoted[3] = 1){
            Sprite = SonettePromoIdle;
        }
   
    }
}

//Paige
else if(ID = 4){

    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeAttack;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoAttack;
        }
   
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeIdle;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoIdle;
        }
   
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeBlock;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoBlock;
        }
   
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeIdle;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoIdle;
        }
   
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeBlock;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoBlock;
        }
   
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeBlock;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoBlock;
        }
   
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeAttack;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoAttack;
        }
   
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeIdle;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoIdle;
        }
   
    }
    else{//Idle Animation
        
        if (global.Promoted[4] = 0){
            Sprite = PaigeIdle;
        }
        else if (global.Promoted[4] = 1){
            Sprite = PaigePromoIdle;
        }
   
    }
}


//Hawel
else if(ID = 5){

    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[5] = 0){
            Sprite = HawelAttack;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoAttack;
        }
   
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[5] = 0){
            Sprite = HawelIdle;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoIdle;
        }
   
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[5] = 0){
            Sprite = HawelBlock;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoBlock;
        }
   
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[5] = 0){
            Sprite = HawelIdle;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoIdle;
        }
   
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[5] = 0){
            Sprite = HawelCast;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoCast;
        }
   
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[5] = 0){
            Sprite = HawelBlock;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoBlock;
        }
   
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[5] = 0){
            Sprite = HawelAttack;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoAttack;
        }
   
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[5] = 0){
            Sprite = HawelIdle;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoIdle;
        }
   
    }
    else{//Idle Animation
        
        if (global.Promoted[5] = 0){
            Sprite = HawelIdle;
        }
        else if (global.Promoted[5] = 1){
            Sprite = HawelPromoIdle;
        }
   
    }
}

//Cynthia
else if(ID = 6){

    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaAttack;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoAttack;
        }
   
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaIdle;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoIdle;
        }
   
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaBlock;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoBlock;
        }
   
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaIdle;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoIdle;
        }
   
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaCast;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoCast;
        }
   
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaBlock;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoBlock;
        }
   
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaAttack;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoAttack;
        }
   
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaIdle;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoIdle;
        }
   
    }
    else{//Idle Animation
        
        if (global.Promoted[6] = 0){
            Sprite = CynthiaIdle;
        }
        else if (global.Promoted[6] = 1){
            Sprite = CynthiaPromoIdle;
        }
   
    }
}

//Knuckles
else if(ID = 7){

    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesAttack;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoAttack;
        }
   
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesIdle;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoIdle;
        }
   
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesBlock;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoBlock;
        }
   
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesIdle;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoIdle;
        }
   
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesCast;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoAttack;
        }
   
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesBlock;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoBlock;
        }
   
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesCast;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoAttack;
        }
   
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesIdle;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoIdle;
        }
   
    }
    else{//Idle Animation
        
        if (global.Promoted[7] = 0){
            Sprite = KnucklesIdle;
        }
        else if (global.Promoted[7] = 1){
            Sprite = KnucklesPromoIdle;
        }
   
    }
}

//Ruburan
else if(ID = 8){

    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanAttack;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoAttack;
        }
   
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanIdle;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoIdle;
        }
   
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanBlock;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoBlock;
        }
   
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanIdle;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoIdle;
        }
   
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanAttack;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoAttack;
        }
   
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanBlock;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoBlock;
        }
   
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanAttack;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoAttack;
        }
   
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanIdle;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoIdle;
        }
   
    }
    else{//Idle Animation
        
        if (global.Promoted[8] = 0){
            Sprite = RuburanIdle;
        }
        else if (global.Promoted[8] = 1){
            Sprite = RuburanPromoIdle;
        }
   
    }
}

//Kiddo
else if(ID = 9){

    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoAttack;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoAttack;
        }
   
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoIdle;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoIdle;
        }
   
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoBlock;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoBlock;
        }
   
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoIdle;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoIdle;
        }
   
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoAttack;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoAttack;
        }
   
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoBlock;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoBlock;
        }
   
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoAttack;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoAttack;
        }
   
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoIdle;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoIdle;
        }
   
    }
    else{//Idle Animation
        
        if (global.Promoted[9] = 0){
            Sprite = KiddoIdle;
        }
        else if (global.Promoted[9] = 1){
            Sprite = KiddoPromoIdle;
        }
   
    }
}

//Sylvia

else if(ID = 10){

   if(SpriteArg = 'Attack'){//Swing weapon
 
        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceAttack; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceAttack; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceAttack; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieAttack; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearAttack; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearAttack; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceAttack; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceAttack; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceAttack; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieAttack; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearAttack; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearAttack; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceAttack; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceAttack; //lance
        }                           
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack

        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearIdle; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceIdle; //lance
        }            
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceBlock; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceBlock; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceBlock; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieBlock; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearBlock; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearBlock; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceBlock; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceBlock; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceBlock; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieBlock; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearBlock; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearBlock; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceBlock; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceBlock; //lance
        }            
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearIdle; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceIdle; //lance
        }           
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceCast; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceCast; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceCast; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieCast; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearCast; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearCast; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceCast; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceCast; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceCast; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieCast; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearCast; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearCast; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceCast; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceCast; //lance
        }        
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearIdle; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceIdle; //lance
        }            
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceCast; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceCast; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceCast; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieCast; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearCast; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearCast; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceCast; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceCast; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceCast; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieCast; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearCast; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearCast; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceCast; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceCast; //lance
        }            
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearIdle; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceIdle; //lance
        }           
    }
    else{//Idle Animation
        
        if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 0 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPowerSpearIdle; //Spear
        }                          
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 27){
            Sprite = SylviaPromoBronzeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 30){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 39){
            Sprite = SylviaPromoChromeLanceIdle; //lance
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 46){
            Sprite = SylviaPromoValkyrieIdle; //lance
        }                              
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 7){
            Sprite = SylviaPromoSpearIdle; //Spear
        }
        else if (global.Promoted[10] = 1 and global.Items[10,global.Equipped_Weapon[10]] = 38){
            Sprite = SylviaPromoPowerSpearIdle; //Spear
        } 
        else if (global.Promoted[10] = 1){
            Sprite = SylviaPromoSteelLanceIdle; //lance
        }
        else if (global.Promoted[10] = 0){
            Sprite = SylviaSteelLanceIdle; //lance
        }           
   
    }
}

//Julia

else if(ID = 11){

    if(SpriteArg = 'Attack'){//Swing weapon
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaAttack;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoAttack;
        }
   
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaIdle;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoIdle;
        }
   
    }
    else if(SpriteArg = 'Block'){//Block
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaBlock;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoBlock;
        }
   
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaIdle;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoIdle;
        }
   
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaAttack;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoAttack;
        }
   
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaBlock;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoBlock;
        }
   
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaAttack;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoAttack;
        }
   
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaIdle;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoIdle;
        }
   
    }
    else{//Idle Animation
        
        if (global.Promoted[11] = 0){
            Sprite = JuliaIdle;
        }
        else if (global.Promoted[11] = 1){
            Sprite = JuliaPromoIdle;
        }
   
    }
}

else if(ID = 12){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = EricAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = EricIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = EricBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = EricIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = EricAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = EricBlock;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = EricAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = EricIdle;
    }
    else{//Idle Animation
        Sprite = EricIdle;
    }
}

else if(ID = 13){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = MintoAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = MintoIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = MintoBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = MintoIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = MintoAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = MintoBlock;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = MintoAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = MintoIdle;
    }
    else{//Idle Animation
        Sprite = MintoIdle;
    }
}

else if(ID = 14){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = MortonAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = MortonIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = MortonBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = MortonIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = MortonAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = MortonBlock;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = MortonAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = MortonIdle;
    }
    else{//Idle Animation
        Sprite = MortonIdle;
    }
}

else if(ID = 15){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = SasukeAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = SasukeIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = SasukeBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = SasukeIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = SasukeAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = SasukeBlock;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = SasukeAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = SasukeIdle;
    }
    else{//Idle Animation
        Sprite = SasukeIdle;
    }
}

else if(ID = 16){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = RidionAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = RidionIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = RidionBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = RidionIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = RidionAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = RidionBlock;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = RidionAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = RidionIdle;
    }
    else{//Idle Animation
        Sprite = RidionIdle;
    }
}

else if(ID = 17){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = KojirouAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = KojirouIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = KojirouBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = KojirouIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = KojirouAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = KojirouBlock;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = KojirouAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = KojirouIdle;
    }
    else{//Idle Animation
        Sprite = KojirouIdle;
    }
}

else if(ID = 18){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = SFMaxAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = SFMaxIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = SFMaxBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = SFMaxIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = SFMaxAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = SFMaxBlock;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = SFMaxAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = SFMaxIdle;
    }
    else{//Idle Animation
        Sprite = SFMaxIdle;
    }
}


else if(ID = 19){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = OddeyeAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = OddeyeIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = OddeyeBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = OddeyeIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = OddeyeCast;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = OddEyeCast2;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = OddeyeAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = OddeyeIdle;
    }
    else{//Idle Animation
        Sprite = OddeyeIdle;
    }
}

else if(ID = 21){

    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = JogurtAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = JogurtIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = JogurtBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = JogurtIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = JogurtAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = JogurtIdle;
    }
    else if(SpriteArg = 'ItemUse'){//Cast
        Sprite = JogurtAttack;
    }
    else if(SpriteArg = 'EndItemUseAnimation'){//Cast
        Sprite = JogurtIdle;
    }
    else{//Idle Animation
        Sprite = JogurtIdle;
    }
}

//=========
//Enemies==
//=========

//else 
else if(ID = 1000){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = WolfAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = WolfIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = WolfBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = WolfIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = WolfAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = WolfIdle;
    }
    else{//Idle Animation
        Sprite = WolfIdle;
    }
}

else if(ID = 1001){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = AlphaWolfAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = AlphaWolfIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = AlphaWolfBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = AlphaWolfIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = AlphaWolfAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = AlphaWolfIdle;
    }
    else{//Idle Animation
        Sprite = AlphaWolfIdle;
    }
}
//Orc
else if(ID = 1002){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = OrcAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = OrcIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = OrcBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = OrcIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = OrcAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = OrcIdle;
    }
    else{//Idle Animation
        Sprite = OrcIdle;
    }
}

//Hunter Goblin
else if(ID = 1003){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = HunterGobAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = HunterGobIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = HunterGobBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = HunterGobIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = HunterGobAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = HunterGobIdle;
    }
    else{//Idle Animation
        Sprite = HunterGobIdle;
    }
}

else if(ID = 1004){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DwarfAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DwarfIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DwarfBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DwarfIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DwarfAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DwarfIdle;
    }
    else{//Idle Animation
        Sprite = DwarfIdle;
    }
}

else if(ID = 1005){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DwarfAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DwarfIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DwarfBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DwarfIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DwarfAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DwarfIdle;
    }
    else{//Idle Animation
        Sprite = DwarfIdle;
    }
}

else if(ID = 1006){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = KrakenArmAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = KrakenArmIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = KrakenArmBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = KrakenArmIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = KrakenArmAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = KrakenArmIdle;
    }
    else{//Idle Animation
        Sprite = KrakenArmIdle;
    }
}

else if(ID = 1007){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = KrakenLegAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = KrakenLegIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = KrakenLegBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = KrakenLegIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = KrakenLegAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = KrakenLegIdle;
    }
    else{//Idle Animation
        Sprite = KrakenLegIdle;
    }
}

else if(ID = 1008){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = BatAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = BatIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = BatBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = BatIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = BatAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = BatIdle;
    }
    else{//Idle Animation
        Sprite = BatIdle;
    }
}

else if(ID = 1009){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = BrassLoaderAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = BrassLoaderIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = BrassLoaderBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = BrassLoaderIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = BrassLoaderAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = BrassLoaderIdle;
    }
    else{//Idle Animation
        Sprite = BrassLoaderIdle;
    }
}

else if(ID = 1010){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarkMageAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarkMageIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarkMageBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarkMageIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarkMageAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarkMageIdle;
    }
    else{//Idle Animation
        Sprite = DarkMageIdle;
    }
}

else if(ID = 1011){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = GreenSlimeAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = GreenSlimeIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = GreenSlimeBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = GreenSlimeIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = GreenSlimeAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = GreenSlimeIdle;
    }
    else{//Idle Animation
        Sprite = GreenSlimeIdle;
    }
}

else if(ID = 1012){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = WormAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = WormIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = WormBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = WormIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = WormAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = WormIdle;
    }
    else{//Idle Animation
        Sprite = WormIdle;
    }
}

else if(ID = 1013){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = OrcLordAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = OrcLordIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = OrcLordBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = OrcLordIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = OrcLordAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = OrcLordIdle;
    }
    else{//Idle Animation
        Sprite = OrcLordIdle;
    }
}

else if(ID = 1014){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarkKnightAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarkKnightIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarkKnightBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarkKnightIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarkKnightAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarkKnightIdle;
    }
    else{//Idle Animation
        Sprite = DarkKnightIdle;
    }
}

else if(ID = 1015){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = PriestAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = PriestIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = PriestBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = PriestIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = PriestAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = PriestIdle;
    }
    else{//Idle Animation
        Sprite = PriestIdle;
    }
}

else if(ID = 1016){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = HellSoldierAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = HellSoldierIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = HellSoldierBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = HellSoldierIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = HellSoldierAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = HellSoldierIdle;
    }
    else{//Idle Animation
        Sprite = HellSoldierIdle;
    }
}

else if(ID = 1017){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = VampireBatAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = VampireBatIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = VampireBatBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = VampireBatIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = VampireBatAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = VampireBatIdle;
    }
    else{//Idle Animation
        Sprite = VampireBatIdle;
    }
}

else if(ID = 1018){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = HGobAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = HGobIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = HGobBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = HGobIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = HGobAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = HGobIdle;
    }
    else{//Idle Animation
        Sprite = HGobIdle;
    }
}

else if(ID = 1019){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarkSniperAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarkSniperIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarkSniperBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarkSniperIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarkSniperAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarkSniperIdle;
    }
    else{//Idle Animation
        Sprite = DarkSniperIdle;
    }
}

else if(ID = 1020){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = GolemAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = GolemIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = GolemBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = GolemIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = GolemAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = GolemIdle;
    }
    else{//Idle Animation
        Sprite = GolemIdle;
    }
}

else if(ID = 1021){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = MagusAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = MagusIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = MagusBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = MagusIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = MagusAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = MagusIdle;
    }
    else{//Idle Animation
        Sprite = MagusIdle;
    }
}

else if(ID = 1022){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = HighWitchAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = HighWitchIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = HighWitchBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = HighWitchIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = HighWitchAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = HighWitchIdle;
    }
    else{//Idle Animation
        Sprite = HighWitchIdle;
    }
}

else if(ID = 1023){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = HarpyAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = HarpyIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = HarpyBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = HarpyIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = HarpyAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = HarpyIdle;
    }
    else{//Idle Animation
        Sprite = HarpyIdle;
    }
}

else if(ID = 1024){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = SkeletonAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = SkeletonIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = SkeletonBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = SkeletonIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = SkeletonAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = SkeletonIdle;
    }
    else{//Idle Animation
        Sprite = SkeletonIdle;
    }
}

else if(ID = 1025){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = ShamanAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = ShamanIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = ShamanBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = ShamanIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = ShamanAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = ShamanIdle;
    }
    else{//Idle Animation
        Sprite = ShamanIdle;
    }
}

else if(ID = 1026){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = BowRiderAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = BowRiderIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = BowRiderBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = BowRiderIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = BowRiderAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = BowRiderIdle;
    }
    else{//Idle Animation
        Sprite = BowRiderIdle;
    }
}

else if(ID = 1027){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = TentacleArmAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = TentacleArmIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = TentacleArmBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = TentacleArmIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = TentacleArmAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = TentacleArmIdle;
    }
    else{//Idle Animation
        Sprite = TentacleArmIdle;
    }
}

else if(ID = 1028){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = TentacleLegAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = TentacleLegIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = TentacleLegBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = TentacleLegIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = TentacleLegAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = TentacleLegIdle;
    }
    else{//Idle Animation
        Sprite = TentacleLegIdle;
    }
}

else if(ID = 1029){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarkMageAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarkMageIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarkMageBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarkMageIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarkMageAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarkMageIdle;
    }
    else{//Idle Animation
        Sprite = DarkMageIdle;
    }
}

else if(ID = 1030){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = HydraAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = HydraIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = HydraBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = HydraIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = HydraAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = HydraIdle;
    }
    else{//Idle Animation
        Sprite = HydraIdle;
    }
}

else if(ID = 1031){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DeathGodAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DeathGodIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DeathGodBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DeathGodIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DeathGodAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DeathGodIdle;
    }
    else{//Idle Animation
        Sprite = DeathGodIdle;
    }
}

else if(ID = 1033){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = StoneGolemAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = StoneGolemIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = StoneGolemBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = StoneGolemIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = StoneGolemAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = StoneGolemIdle;
    }
    else{//Idle Animation
        Sprite = StoneGolemIdle;
    }
}

else if(ID = 1032){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = EikuAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = EikuIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = EikuBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = EikuIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = EikuAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = EikuIdle;
    }
    else{//Idle Animation
        Sprite = EikuIdle;
    }
}

else if(ID = 1034){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = BrassGunnerAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = BrassGunnerIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = BrassGunnerBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = BrassGunnerIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = BrassGunnerAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = BrassGunnerIdle;
    }
    else{//Idle Animation
        Sprite = BrassGunnerIdle;
    }
}

else if(ID = 1035){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = HarpyQueenAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = HarpyQueenIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = HarpyQueenBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = HarpyQueenIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = HarpyQueenAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = HarpyQueenIdle;
    }
    else{//Idle Animation
        Sprite = HarpyQueenIdle;
    }
}

else if(ID = 1036){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = SandWormAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = SandWormIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = SandWormBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = SandWormIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = SandWormAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = SandWormIdle;
    }
    else{//Idle Animation
        Sprite = SandWormIdle;
    }
}

else if(ID = 1037){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = HighPriestAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = HighPriestIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = HighPriestBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = HighPriestIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = HighPriestAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = HighPriestIdle;
    }
    else{//Idle Animation
        Sprite = HighPriestIdle;
    }
}

else if(ID = 1038){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = MischaelaAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = MischaelaIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = MischaelaBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = MischaelaIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = MischaelaAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = MischaelaIdle;
    }
    else{//Idle Animation
        Sprite = MischaelaIdle;
    }
}

else if(ID = 9038){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = FakeMischaelaAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = FakeMischaelaIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = FakeMischaelaBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = FakeMischaelaIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = FakeMischaelaAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = FakeMischaelaIdle;
    }
    else{//Idle Animation
        Sprite = FakeMischaelaIdle;
    }
}

else if(ID = 1039){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = GargoyleAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = GargoyleIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = GargoyleBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = GargoyleIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = GargoyleAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = GargoyleIdle;
    }
    else{//Idle Animation
        Sprite = GargoyleIdle;
    }
}

else if(ID = 1040){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = ArchKnightAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = ArchKnightIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = ArchKnightBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = ArchKnightIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = ArchKnightAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = ArchKnightIdle;
    }
    else{//Idle Animation
        Sprite = ArchKnightIdle;
    }
}

else if(ID = 1041){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = WitchAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = WitchIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = WitchBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = WitchIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = WitchAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = WitchIdle;
    }
    else{//Idle Animation
        Sprite = WitchIdle;
    }
}

else if(ID = 1042){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = LynxAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = LynxIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = LynxBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = LynxIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = LynxAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = LynxIdle;
    }
    else{//Idle Animation
        Sprite = LynxIdle;
    }
}

else if(ID = 1043){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = BloodSkullAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = BloodSkullIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = BloodSkullBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = BloodSkullIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = BloodSkullAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = BloodSkullIdle;
    }
    else{//Idle Animation
        Sprite = BloodSkullIdle;
    }
}

else if(ID = 1044){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = CannonKnightAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = CannonKnightIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = CannonKnightBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = CannonKnightIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = CannonKnightAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = CannonKnightIdle;
    }
    else{//Idle Animation
        Sprite = CannonKnightIdle;
    }
}

else if(ID = 1045){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = LesserDemonAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = LesserDemonIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = LesserDemonBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = LesserDemonIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = LesserDemonAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = LesserDemonIdle;
    }
    else{//Idle Animation
        Sprite = LesserDemonIdle;
    }
}

else if(ID = 1046){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DollAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DollIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DollBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DollIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DollAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DollIdle;
    }
    else{//Idle Animation
        Sprite = DollIdle;
    }
}

else if(ID = 1047){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarkShamanAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarkShamanIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarkShamanBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarkShamanIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarkShamanAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarkShamanIdle;
    }
    else{//Idle Animation
        Sprite = DarkShamanIdle;
    }
}

else if(ID = 1048){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarkMaxAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarkMaxIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarkMaxBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarkMaxIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarkMaxAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarkMaxIdle;
    }
    else{//Idle Animation
        Sprite = DarkMaxIdle;
    }
}

else if(ID = 1049){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DemonAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DemonIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DemonBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DemonIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DemonAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DemonIdle;
    }
    else{//Idle Animation
        Sprite = DemonIdle;
    }
}

else if(ID = 1050){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = PHydraAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = PHydraIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = PHydraBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = PHydraIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = PHydraAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = PHydraIdle;
    }
    else{//Idle Animation
        Sprite = PHydraIdle;
    }
}

else if(ID = 1051){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarkGeneralAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarkGeneralIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarkGeneralBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarkGeneralIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarkGeneralAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarkGeneralIdle;
    }
    else{//Idle Animation
        Sprite = DarkGeneralIdle;
    }
}

else if(ID = 1052){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DemonStatueAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DemonStatueIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DemonStatueBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DemonStatueIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DemonStatueAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DemonStatueIdle;
    }
    else{//Idle Animation
        Sprite = DemonStatueIdle;
    }
}

else if(ID = 1053){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarksolAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarksolIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarksolBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarksolIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarksolAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarksolIdle;
    }
    else{//Idle Animation
        Sprite = DarksolIdle;
    }
}

else if(ID = 1054){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = DarksolAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = DarksolIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = DarksolBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = DarksolIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = DarksolAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = DarksolIdle;
    }
    else{//Idle Animation
        Sprite = DarksolIdle;
    }
}

else if(ID = 1100){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = PreDarksolAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = PreDarksolIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = PreDarksolBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = PreDarksolIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = PreDarksolAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = PreDarksolIdle;
    }
    else{//Idle Animation
        Sprite = PreDarksolIdle;
    }
}

else if(ID = 1101){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = SpiderAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = SpiderIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = SpiderBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = SpiderIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = SpiderAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = SpiderIdle;
    }
    else{//Idle Animation
        Sprite = SpiderIdle;
    }
}

else if(ID = 1102){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = SDemonAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = SDemonIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = SDemonBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = SDemonIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = SDemonAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = SDemonIdle;
    }
    else{//Idle Animation
        Sprite = SDemonIdle;
    }
}



else if(ID = 2000){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = GizmoAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = GizmoIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = GizmoBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = GizmoIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = GizmoAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = GizmoIdle;
    }
    else{//Idle Animation
        Sprite = GizmoIdle;
    }
}

else if(ID = 2001){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = ArcherSmokeAttack;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = ArcherSmokeIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = ArcherSmokeBlock;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = ArcherSmokeIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = ArcherSmokeAttack;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = ArcherSmokeIdle;
    }
    else{//Idle Animation
        Sprite = ArcherSmokeIdle;
    }
}

else if(ID = 2002){
    if(SpriteArg = 'Attack'){//Swing weapon
        Sprite = LaserEyeIdle;
    }
    else if(SpriteArg = 'AttackEnd'){//return to idle from Attack
        Sprite = LaserEyeIdle;
    }
    else if(SpriteArg = 'Block'){//Block
        Sprite = LaserEyeIdle;
    }
    else if(SpriteArg = 'BlockEnd'){//return to idle from Block
        Sprite = LaserEyeIdle;
    }
    else if(SpriteArg = 'SpellCast'){//Cast
        Sprite = LaserEyeIdle;
    }
    else if(SpriteArg = 'SpellCastEnd'){//return to idle from Cast
        Sprite = OddeyeSpellCastEnd;
    }
    else{//Idle Animation
        Sprite = LaserEyeIdle;
    }
}


return Sprite;
