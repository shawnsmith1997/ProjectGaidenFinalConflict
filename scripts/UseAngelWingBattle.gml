
                    sound_play(SpellCastSound);
                    with(objPlayer){
                        SaveStats(self);
                    }
                    global.inBattle = 0;
                    GlobalHealAll();//restore health and mana
                    global.TransitionState = -1;//flagged off demo temp
                    room_goto(TownRoom01);
