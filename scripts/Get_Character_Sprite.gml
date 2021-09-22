//Argument 0 = Player ID
//argument 1 = Direction;

var UnitID, Sprite_New, Direction;

UnitID = argument0;
Direction = argument1;

switch (UnitID){
    //Character 1
    case 1:
        switch(Direction){
            case 0: 
                if (global.Promoted[1] = 0){
                Sprite_New = LosJasonRight;
                }
                else if (global.Promoted[1] = 1){
                Sprite_New = IanPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[1] = 0){
                Sprite_New = LosJasonUp;
                }
                else if (global.Promoted[1] = 1){
                Sprite_New = IanPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[1] = 0){
                Sprite_New = LosJasonLeft;
                }
                else if (global.Promoted[1] = 1){
                Sprite_New = IanPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[1] = 0){
                Sprite_New = LosJasonDown;
                }
                else if (global.Promoted[1] = 1){
                Sprite_New = IanPromoDown;
                }   
                break;
                                  
                        
        }
        break;
        
    //Character 2
    case 2:
        switch(Direction){
            case 0: 
                if (global.Promoted[2] = 0){
                Sprite_New = LosMaxRight;
                }
                else if (global.Promoted[2] = 1){
                Sprite_New = MeadPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[2] = 0){
                Sprite_New = LosMaxUp;
                }
                else if (global.Promoted[2] = 1){
                Sprite_New = MeadPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[2] = 0){
                Sprite_New = LosMaxLeft;
                }
                else if (global.Promoted[2] = 1){
                Sprite_New = MeadPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[2] = 0){
                Sprite_New = LosMaxDown;
                }
                else if (global.Promoted[2] = 1){
                Sprite_New = MeadPromoDown;
                }   
                break;        
        }
        break;
        
        //Character 3
        case 3:
            switch(Direction){
            case 0: 
                if (global.Promoted[3] = 0){
                Sprite_New = SarahRight;
                }
                else if (global.Promoted[3] = 1){
                Sprite_New = SonetterPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[3] = 0){
                Sprite_New = SarahUp;
                }
                else if (global.Promoted[3] = 1){
                Sprite_New = SonettePromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[3] = 0){
                Sprite_New = SarahLeft;
                }
                else if (global.Promoted[3] = 1){
                Sprite_New = SonettePromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[3] = 0){
                Sprite_New = SarahDown;
                }
                else if (global.Promoted[3] = 1){
                Sprite_New = SonettePromoDown;
                }   
                break;  
            }
            break;
            
        //Character 4
        case 4:
            switch(Direction){
            case 0: 
                if (global.Promoted[4] = 0){
                Sprite_New = DianeRight;
                }
                else if (global.Promoted[4] = 1){
                Sprite_New = PaigePrmoRight;
                }
                break;
            case 90: 
                if (global.Promoted[4] = 0){
                Sprite_New = DianeUp;
                }
                else if (global.Promoted[4] = 1){
                Sprite_New = PaigePromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[4] = 0){
                Sprite_New = DianeLeft;
                }
                else if (global.Promoted[4] = 1){
                Sprite_New = PaigePromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[4] = 0){
                Sprite_New = DianeDown;
                }
                else if (global.Promoted[4] = 1){
                Sprite_New = PaigePromoDown;
                }   
                break;  
            }
            break;
            
        //Character 5
        case 5:
            switch(Direction){
            case 0: 
                if (global.Promoted[5] = 0){
                Sprite_New = NatashaRight;
                }
                else if (global.Promoted[5] = 1){
                Sprite_New = HawelPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[5] = 0){
                Sprite_New = NatashaUp;
                }
                else if (global.Promoted[5] = 1){
                Sprite_New = HawelPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[5] = 0){
                Sprite_New = NatashaLeft;
                }
                else if (global.Promoted[5] = 1){
                Sprite_New = HawelPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[5] = 0){
                Sprite_New = NatashaDown;
                }
                else if (global.Promoted[5] = 1){
                Sprite_New = HawelPromoDown;
                }   
                break;  
            }
            break;
            
        //Character 6
        case 6:
            switch(Direction){
            case 0: 
                if (global.Promoted[6] = 0){
                Sprite_New = RickRight;
                }
                else if (global.Promoted[6] = 1){
                Sprite_New = CynthiaPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[6] = 0){
                Sprite_New = RickUp;
                }
                else if (global.Promoted[6] = 1){
                Sprite_New = CynthiaPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[6] = 0){
                Sprite_New = RickLeft;
                }
                else if (global.Promoted[6] = 1){
                Sprite_New = CynthiaPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[6] = 0){
                Sprite_New = RickDown;
                }
                else if (global.Promoted[6] = 1){
                Sprite_New = CynthiaPromoDown;
                }   
                break; 
            }
            break;
        case 7:
            switch(Direction){
            case 0: 
                if (global.Promoted[7] = 0){
                Sprite_New = ChaosRight;
                }
                else if (global.Promoted[7] = 1){
                Sprite_New = KnucklesPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[7] = 0){
                Sprite_New = ChaosUp;
                }
                else if (global.Promoted[7] = 1){
                Sprite_New = KnucklesPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[7] = 0){
                Sprite_New = ChaosLeft;
                }
                else if (global.Promoted[7] = 1){
                Sprite_New = KnucklesPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[7] = 0){
                Sprite_New = ChaosDown;
                }
                else if (global.Promoted[7] = 1){
                Sprite_New = KnucklesPromoDown;
                }   
            }
            break;
            
            case 8:
            switch(Direction){
            case 0: 
                if (global.Promoted[8] = 0){
                Sprite_New = RuburanRight;
                }
                else if (global.Promoted[8] = 1){
                Sprite_New = RuburanPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[8] = 0){
                Sprite_New = RuburanUp;
                }
                else if (global.Promoted[8] = 1){
                Sprite_New = RuburanPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[8] = 0){
                Sprite_New = RuburanLeft;
                }
                else if (global.Promoted[8] = 1){
                Sprite_New = RuburanPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[8] = 0){
                Sprite_New = RuburanDown;
                }
                else if (global.Promoted[8] = 1){
                Sprite_New = RuburanPromoDown;
                }   
            }
            break;
            case 9:
            switch(Direction){
            case 0: 
                if (global.Promoted[9] = 0){
                Sprite_New = KiddoRight;
                }
                else if (global.Promoted[9] = 1){
                Sprite_New = KiddoPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[9] = 0){
                Sprite_New = KiddoUp;
                }
                else if (global.Promoted[9] = 1){
                Sprite_New = KiddoPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[9] = 0){
                Sprite_New = KiddoLeft;
                }
                else if (global.Promoted[9] = 1){
                Sprite_New = KiddoPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[9] = 0){
                Sprite_New = KiddoDown;
                }
                else if (global.Promoted[9] = 1){
                Sprite_New = KiddoPromoDown;
                }   
            }
            break;
            
            case 10:
            switch(Direction){
            case 0: 
                if (global.Promoted[10] = 0){
                Sprite_New = SylviaRight;
                }
                else if (global.Promoted[10] = 1){
                Sprite_New = SylviaPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[10] = 0){
                Sprite_New = SylviaUp;
                }
                else if (global.Promoted[10] = 1){
                Sprite_New = SylviaPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[10] = 0){
                Sprite_New = SylviaLeft;
                }
                else if (global.Promoted[10] = 1){
                Sprite_New = SylviaPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[10] = 0){
                Sprite_New = SylviaDown;
                }
                else if (global.Promoted[10] = 1){
                Sprite_New = SylviaPromoDown;
                }  
            }
            break;
            
             case 11:
            switch(Direction){
            case 0: 
                if (global.Promoted[11] = 0){
                Sprite_New = JuliaRight;
                }
                else if (global.Promoted[11] = 1){
                Sprite_New = JuliaPromoRight;
                }
                break;
            case 90: 
                if (global.Promoted[11] = 0){
                Sprite_New = JuliaUp;
                }
                else if (global.Promoted[11] = 1){
                Sprite_New = JuliaPromoUp;
                }                
                break;
            case 180: 
                if (global.Promoted[11] = 0){
                Sprite_New = JuliaLeft;
                }
                else if (global.Promoted[11] = 1){
                Sprite_New = JuliaPromoLeft;
                }   
                break;
            case 270: 
                if (global.Promoted[11] = 0){
                Sprite_New = JuliaDown;
                }
                else if (global.Promoted[11] = 1){
                Sprite_New = JuliaPromoDown;
                } 
            }
            break;
            
            case 12:
            switch(Direction){
                case 0: 
                    Sprite_New = EricRight;
                    break;
                case 90: 
                    Sprite_New = EricUp;
                    break;
                case 180: 
                    Sprite_New = EricLeft;
                    break;
                case 270: 
                    Sprite_New = EricDown;
                    break;
            }
            break;
            
            case 13:
            switch(Direction){
                case 0: 
                    Sprite_New = MintoRight;
                    break;
                case 90: 
                    Sprite_New = MintoUp;
                    break;
                case 180: 
                    Sprite_New = MintoLeft;
                    break;
                case 270: 
                    Sprite_New = MintoDown;
                    break;
            }
            break;            
            
            case 14:
            switch(Direction){
                case 0: 
                    Sprite_New = MortonRight;
                    break;
                case 90: 
                    Sprite_New = MortonUp;
                    break;
                case 180: 
                    Sprite_New = MortonLeft;
                    break;
                case 270: 
                    Sprite_New = MortonDown;
                    break;
            }
            break;
            
            case 15:
            switch(Direction){
                case 0: 
                    Sprite_New = SasukeRight;
                    break;
                case 90: 
                    Sprite_New = SasukeUp;
                    break;
                case 180: 
                    Sprite_New = SasukeLeft;
                    break;
                case 270: 
                    Sprite_New = SasukeDown;
                    break;
            }
            break;
            
            case 16:
            switch(Direction){
                case 0: 
                    Sprite_New = RidionRight;
                    break;
                case 90: 
                    Sprite_New = RidionUp;
                    break;
                case 180: 
                    Sprite_New = RidionLeft;
                    break;
                case 270: 
                    Sprite_New = RidionDown;
                    break;
            }
            break;
            
            case 17:
            switch(Direction){
                case 0: 
                    Sprite_New = KojirouRight;
                    break;
                case 90: 
                    Sprite_New = KojirouUp;
                    break;
                case 180: 
                    Sprite_New = KojirouLeft;
                    break;
                case 270: 
                    Sprite_New = KojirouDown;
                    break;
            }
            break;                                                     
                        
            case 18:
            switch(Direction){
                case 0: 
                    Sprite_New = MaxRight;
                    break;
                case 90: 
                    Sprite_New = MaxUp;
                    break;
                case 180: 
                    Sprite_New = MaxLeft;
                    break;
                case 270: 
                    Sprite_New = MaxDown;
                    break;
            }
            break;                      
            
            case 19:
            switch(Direction){
                case 0: 
                    Sprite_New = OddeyeRight;
                    break;
                case 90: 
                    Sprite_New = OddeyeUp;
                    break;
                case 180: 
                    Sprite_New = OddeyeLeft;
                    break;
                case 270: 
                    Sprite_New = OddeyeDown;
                    break;
            }
            break;
            
            case 20:
            switch(Direction){
                case 0: 
                    Sprite_New = JogurtNPCRight;
                    break;
                case 90: 
                    Sprite_New = JogurtNPCUp;
                    break;
                case 180: 
                    Sprite_New = JogurtNPCLeft;
                    break;
                case 270: 
                    Sprite_New = JogurtNPCDown;
                    break;
            }
            break;            
            
            case 2094:
            switch(Direction){
                case 0: 
                    Sprite_New = OddeyeRight;
                    break;
                case 90: 
                    Sprite_New = OddeyeUp;
                    break;
                case 180: 
                    Sprite_New = OddeyeLeft;
                    break;
                case 270: 
                    Sprite_New = OddEyeM;
                    break;
            }
            break;            
            
        
        //end team members
        //Character 200 NPCs
        case 200:
            switch(Direction){
                case 0: 
                    Sprite_New = MinasRight;
                    break;
                case 90: 
                    Sprite_New = MinasUp;
                    break;
                case 180: 
                    Sprite_New = MinasLeft;
                    break;
                case 270: 
                    Sprite_New = MinasDown;
                    break;
            }
            break;
            
        case 201:
            switch(Direction){
                case 0: 
                    Sprite_New = NPC201Right;
                    break;
                case 90: 
                    Sprite_New = NPC201Up;
                    break;
                case 180: 
                    Sprite_New = NPC201Left;
                    break;
                case 270: 
                    Sprite_New = NPC201Down;
                    break;
            }
            break;
            
        case 202:
            switch(Direction){
                case 0: 
                    Sprite_New = NPC202Right;
                    break;
                case 90: 
                    Sprite_New = NPC202Up;
                    break;
                case 180: 
                    Sprite_New = NPC202Left;
                    break;
                case 270: 
                    Sprite_New = NPC202Down;
                    break;
            }
            break;
            
        case 203:
            switch(Direction){
                case 0: 
                    Sprite_New = NPC203Right;
                    break;
                case 90: 
                    Sprite_New = NPC203Up;
                    break;
                case 180: 
                    Sprite_New = NPC203Left;
                    break;
                case 270: 
                    Sprite_New = NPC203Down;
                    break;
            }
            break;
            
        case 204:
            switch(Direction){
                case 0: 
                    Sprite_New = NPC204Right;
                    break;
                case 90: 
                    Sprite_New = NPC204Up;
                    break;
                case 180: 
                    Sprite_New = NPC204Left;
                    break;
                case 270: 
                    Sprite_New = NPC204Down;
                    break;
            }
            break;
            
        case 205:
            switch(Direction){
                case 0: 
                    Sprite_New = NPC205Right;
                    break;
                case 90: 
                    Sprite_New = NPC205Up;
                    break;
                case 180: 
                    Sprite_New = NPC205Left;
                    break;
                case 270: 
                    Sprite_New = NPC205Down;
                    break;
            }
            break;
            
        case 206:
            switch(Direction){
                case 0: 
                    Sprite_New = NPC206Right;
                    break;
                case 90: 
                    Sprite_New = NPC206Up;
                    break;
                case 180: 
                    Sprite_New = NPC206Left;
                    break;
                case 270: 
                    Sprite_New = NPC206Down;
                    break;
            }
            break;
            
            case 207:
            switch(Direction){
                case 0: 
                    Sprite_New = adamNPCRight;
                    break;
                case 90: 
                    Sprite_New = adamNPCUp;
                    break;
                case 180: 
                    Sprite_New = adamNPCLeft;
                    break;
                case 270: 
                    Sprite_New = adamNPCDown;
                    break;
            }
            break;
            
            case 208:
            switch(Direction){
                case 0: 
                    Sprite_New = OrcLordRight;
                    break;
                case 90: 
                    Sprite_New = OrcLordUp;
                    break;
                case 180: 
                    Sprite_New = OrcLordLeft;
                    break;
                case 270: 
                    Sprite_New = OrcLordDown;
                    break;
            }
            break;           
            
            case 209:
            switch(Direction){
                case 0: 
                    Sprite_New = AlphaWolfRight;
                    break;
                case 90: 
                    Sprite_New = AlphaWolfUp;
                    break;
                case 180: 
                    Sprite_New = AlphaWolfLeft;
                    break;
                case 270: 
                    Sprite_New = AlphaWolfDown;
                    break;
            }
            break;
            
            case 210:
            switch(Direction){
                case 0: 
                    Sprite_New = MischaelaRight;
                    break;
                case 90: 
                    Sprite_New = MischaelaUp;
                    break;
                case 180: 
                    Sprite_New = MischaelaLeft;
                    break;
                case 270: 
                    Sprite_New = MischaelaDown;
                    break;
            }
            break;
            
            case 211:
            switch(Direction){
                case 0: 
                    Sprite_New = LynxRight;
                    break;
                case 90: 
                    Sprite_New = LynxUp;
                    break;
                case 180: 
                    Sprite_New = LynxLeft;
                    break;
                case 270: 
                    Sprite_New = LynxDown;
                    break;
            }
            break;
            
            case 212:
            switch(Direction){
                case 0: 
                    Sprite_New = KrakenArm;
                    break;
                case 90: 
                    Sprite_New = KrakenArm;
                    break;
                case 180: 
                    Sprite_New = KrakenArm;
                    break;
                case 270: 
                    Sprite_New = KrakenArm;
                    break;
            }
            break;
            
            case 213:
            switch(Direction){
                case 0: 
                    Sprite_New = JogurtNPCRight;
                    break;
                case 90: 
                    Sprite_New = JogurtNPCUp;
                    break;
                case 180: 
                    Sprite_New = JogurtNPCLeft;
                    break;
                case 270: 
                    Sprite_New = JogurtNPCDown;
                    break;
            }
            break;

            case 214:
            switch(Direction){
                case 0: 
                    Sprite_New = NosshuRight;
                    break;
                case 90: 
                    Sprite_New = NosshuUp;
                    break;
                case 180: 
                    Sprite_New = NosshuLeft;
                    break;
                case 270: 
                    Sprite_New = NosshuDown;
                    break;
            }
            break;
            
            case 215:
            switch(Direction){
                case 0: 
                    Sprite_New = EleBallYellow;
                    break;
                case 90: 
                    Sprite_New = EleBallYellow;
                    break;
                case 180: 
                    Sprite_New = EleBallYellow;
                    break;
                case 270: 
                    Sprite_New = EleBallYellow;
                    break;
            }
            break;
            
            case 216:
            switch(Direction){
                case 0: 
                    Sprite_New = OverworldBoltSprite;
                    break;
                case 90: 
                    Sprite_New = OverworldBoltSprite;
                    break;
                case 180: 
                    Sprite_New = OverworldBoltSprite;
                    break;
                case 270: 
                    Sprite_New = OverworldBoltSprite;
                    break;
            }
            break;
            
            case 217:
            switch(Direction){
                case 0: 
                    Sprite_New = DwarfRight;
                    break;
                case 90: 
                    Sprite_New = DwarfUp;
                    break;
                case 180: 
                    Sprite_New = DwarfLeft;
                    break;
                case 270: 
                    Sprite_New = DwarfDown;
                    break;
            }
            break;
            
            case 218:
            switch(Direction){
                case 0: 
                    Sprite_New = BirdRight;
                    break;
                case 90: 
                    Sprite_New = BirdUp;
                    break;
                case 180: 
                    Sprite_New = BirdLeft;
                    break;
                case 270: 
                    Sprite_New = BirdDown;
                    break;
            }
            break;
            
            case 219:
            switch(Direction){
                case 0: 
                    Sprite_New = EikuRight;
                    break;
                case 90: 
                    Sprite_New = EikuUp;
                    break;
                case 180: 
                    Sprite_New = EikuLeft;
                    break;
                case 270: 
                    Sprite_New = EikuDown;
                    break;
            }
            break;         
            
            case 220:
            switch(Direction){
                case 0: 
                    Sprite_New = MagusRight;
                    break;
                case 90: 
                    Sprite_New = MagusUp;
                    break;
                case 180: 
                    Sprite_New = MagusLeft;
                    break;
                case 270: 
                    Sprite_New = MagusDown;
                    break;
            }
            break;
            
            case 221:
            switch(Direction){
                case 0: 
                    Sprite_New = DarkMageRight;
                    break;
                case 90: 
                    Sprite_New = DarkMageUp;
                    break;
                case 180: 
                    Sprite_New = DarkMageLeft;
                    break;
                case 270: 
                    Sprite_New = DarkMageDown;
                    break;
            }
            break; 
            
            case 222:
            switch(Direction){
                case 0: 
                    Sprite_New = MitulaRight;
                    break;
                case 90: 
                    Sprite_New = MitulaUp;
                    break;
                case 180: 
                    Sprite_New = MitulaLeft;
                    break;
                case 270: 
                    Sprite_New = MitulaDown;
                    break;
            }
            break;   
            
            case 223:
            switch(Direction){
                case 0: 
                    Sprite_New = SkeletonRight;
                    break;
                case 90: 
                    Sprite_New = SkeletonUp;
                    break;
                case 180: 
                    Sprite_New = SkeletonLeft;
                    break;
                case 270: 
                    Sprite_New = SkeletonDown;
                    break;
            }
            break; 
            
            case 224:
            switch(Direction){
                case 0: 
                    Sprite_New = DarkSniperRight;
                    break;
                case 90: 
                    Sprite_New = DarkSniperUp;
                    break;
                case 180: 
                    Sprite_New = DarkSniperLeft;
                    break;
                case 270: 
                    Sprite_New = DarkSniperDown;
                    break;
            }
            break; 
            
            case 225:
            switch(Direction){
                case 0: 
                    Sprite_New = ShamanRight;
                    break;
                case 90: 
                    Sprite_New = ShamanUp;
                    break;
                case 180: 
                    Sprite_New = ShamanLeft;
                    break;
                case 270: 
                    Sprite_New = ShamanDown;
                    break;
            }
            break;
            
            case 226:
            switch(Direction){
                case 0: 
                    Sprite_New = BowRiderRight;
                    break;
                case 90: 
                    Sprite_New = BowRiderUp;
                    break;
                case 180: 
                    Sprite_New = BowRiderLeft;
                    break;
                case 270: 
                    Sprite_New = BowRiderDown;
                    break;
            }
            break;
            
            case 227:
            switch(Direction){
                case 0: 
                    Sprite_New = MasterMageRight;
                    break;
                case 90: 
                    Sprite_New = MasterMageUp;
                    break;
                case 180: 
                    Sprite_New = MasterMageLeft;
                    break;
                case 270: 
                    Sprite_New = MasterMageDown;
                    break;
            }
            break; 
            
            case 228:
            switch(Direction){
                case 0: 
                    Sprite_New = DwarfRight;
                    break;
                case 90: 
                    Sprite_New = DwarfUp;
                    break;
                case 180: 
                    Sprite_New = DwarfLeft;
                    break;
                case 270: 
                    Sprite_New = DwarfDown;
                    break;
            }
            break;
            
            case 229:
            switch(Direction){
                case 0: 
                    Sprite_New = DeathGodRight;
                    break;
                case 90: 
                    Sprite_New = DeathGodUp;
                    break;
                case 180: 
                    Sprite_New = DeathGodLeft;
                    break;
                case 270: 
                    Sprite_New = DeathGodDown;
                    break;
            }
            break; 
            
            case 230:
            switch(Direction){
                case 0: 
                    Sprite_New = KingGalamRight;
                    break;
                case 90: 
                    Sprite_New = KingGalamUp;
                    break;
                case 180: 
                    Sprite_New = KingGalamLeft;
                    break;
                case 270: 
                    Sprite_New = KingGalamDown;
                    break;
            }
            break;
            
            case 231:
            switch(Direction){
                case 0: 
                    Sprite_New = HighWitchRight;
                    break;
                case 90: 
                    Sprite_New = HighWitchUp;
                    break;
                case 180: 
                    Sprite_New = HighWitchLeft;
                    break;
                case 270: 
                    Sprite_New = HighWitchDown;
                    break;
            }
            break; 
            
            case 232:
            switch(Direction){
                case 0: 
                    Sprite_New = KnightRight;
                    break;
                case 90: 
                    Sprite_New = KnightUp;
                    break;
                case 180: 
                    Sprite_New = KnightLeft;
                    break;
                case 270: 
                    Sprite_New = KnightDown;
                    break;
            }
            break;
            
            case 233:
            switch(Direction){
                case 0: 
                    Sprite_New = DarkMaxRight;
                    break;
                case 90: 
                    Sprite_New = MaxUp;
                    break;
                case 180: 
                    Sprite_New = DarkMaxLeft;
                    break;
                case 270: 
                    Sprite_New = DarkMaxDown;
                    break;
            }
            break;
            
            case 234:
            switch(Direction){
                case 0: 
                    Sprite_New = DarkShamanRight;
                    break;
                case 90: 
                    Sprite_New = DarkShamanUp;
                    break;
                case 180: 
                    Sprite_New = DarkShamanLeft;
                    break;
                case 270: 
                    Sprite_New = DarkShamanDown;
                    break;
            }
            break;
            
            case 235:
            switch(Direction){
                case 0: 
                    Sprite_New = DarkSolspr;
                    break;
                case 90: 
                    Sprite_New = DarkSolspr;
                    break;
                case 180: 
                    Sprite_New = DarkSolspr;
                    break;
                case 270: 
                    Sprite_New = DarkSolspr;
                    break;
            }
            break;                                                                                                                                                                                                            
                                  
            
            case 1000:
            switch(Direction){
                case 0: 
                    Sprite_New = null_sprite;
                    break;
                case 90: 
                    Sprite_New = null_sprite;
                    break;
                case 180: 
                    Sprite_New = null_sprite;
                    break;
                case 270: 
                    Sprite_New = null_sprite;
                    break;
            }
            break;           
            
            
        default:
            switch(Direction){
                case 0: 
                    Sprite_New = ChaosRight;
                    break;
                case 90: 
                    Sprite_New = ChaosUp;
                    break;
                case 180: 
                    Sprite_New = ChaosLeft;
                    break;
                case 270: 
                    Sprite_New = ChaosDown;
                    break;
            }
}

/*
if(UnitID = 1){
    if (Direction = 0){
        Sprite_New = LosJasonRight;
    }
    else if (Direction = 90){
        Sprite_New = LosJasonUp;
    }
    else if (Direction = 180){
        Sprite_New = LosJasonLeft;
    }
    else if (Direction = 270){
        Sprite_New = LosJasonDown;
    }
}
else if(UnitID = 2){
    if (Direction = 0){
        Sprite_New = LosMaxRight;
    }
    else if (Direction = 90){
        Sprite_New = LosMaxUp;
    }
    else if (Direction = 180){
        Sprite_New = LosMaxLeft;
    }
    else if (Direction = 270){
        Sprite_New = LosMaxDown;
    }
}
else if(UnitID = 3){
    if (Direction = 0){
        Sprite_New = SarahRight;
    }
    else if (Direction = 90){
        Sprite_New = SarahUp;
    }
    else if (Direction = 180){
        Sprite_New = SarahLeft;
    }
    else if (Direction = 270){
        Sprite_New = SarahDown;
    }
}
else if(UnitID = 4){
    if (Direction = 0){
        Sprite_New = DianeRight;
    }
    else if (Direction = 90){
        Sprite_New = DianeUp;
    }
    else if (Direction = 180){
        Sprite_New = DianeLeft;
    }
    else if (Direction = 270){
        Sprite_New = DianeDown;
    }
}
else if(UnitID = 5){
    if (Direction = 0){
        Sprite_New = NatashaRight;
    }
    else if (Direction = 90){
        Sprite_New = NatashaUp;
    }
    else if (Direction = 180){
        Sprite_New = NatashaLeft;
    }
    else if (Direction = 270){
        Sprite_New = NatashaDown;
    }
}
else if(UnitID = 6){
    if (Direction = 0){
        Sprite_New = RickRight;
    }
    else if (Direction = 90){
        Sprite_New = RickUp;
    }
    else if (Direction = 180){
        Sprite_New = RickLeft;
    }
    else if (Direction = 270){
        Sprite_New = RickDown;
    }
}
/*
if (UnitID = 10){
    if(global.Promoted[1] = 0){
        if (Direction = 0){
        Sprite_New = BillyRight;
        }
        else if (Direction = 90){
        Sprite_New = BillyUp;
        }
        else if (Direction = 180){
        Sprite_New = BillyLeft;
        }
        else if (Direction = 270){
        Sprite_New = BillyDown;
        }
    }
    else{
        if (Direction = 0){
        Sprite_New = BillyPromotedRight;
        }
        else if (Direction = 90){
        Sprite_New = BillyPromotedUp;
        }
        else if (Direction = 180){
        Sprite_New = BillyPromotedLeft;
        }
        else if (Direction = 270){
        Sprite_New = BillyPromotedDown;
        }
    }
}*/

/*
else if (UnitID = 200){
if (Direction = 0){
Sprite_New = MinasRight;
}
else if (Direction = 90){
Sprite_New = MinasUp;
}
else if (Direction = 180){
Sprite_New = MinasLeft;
}
else if (Direction = 270){
Sprite_New = MinasDown;
}
}


else{
//Sprite_New = BlankSprite;
if (Direction = 0){
Sprite_New = ChaosRight;
}
else if (Direction = 90){
Sprite_New = ChaosUp;
}
else if (Direction = 180){
Sprite_New = ChaosLeft;
}
else if (Direction = 270){
Sprite_New = ChaosDown;
}
}
*/

return Sprite_New;
