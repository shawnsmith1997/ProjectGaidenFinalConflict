//A simple script for adding "pauses" to dialogue lines.
//Continue's dialogue after "Delay" ammount of steps
//Note that there are 60 steps per second. 

var Delay;
Delay = argument0;
DialogueControler.ChatAnimate = false;
DialogueControler.alarm[0] = Delay;