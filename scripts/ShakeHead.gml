//Have the character shake his head
var Character, Time;
Character = argument0;
//Time = argument1;//number of times we nod the character's head

Character.visible = false;
instance_create(Character.x,Character.y,CharacterAnimationControler);
CharacterAnimationControler.sprite_index = Character.sprite_index;
//CharacterAnimationControler.Time = 60;
CharacterAnimationControler.alarm[0] = 60;
CharacterAnimationControler.CurrentObject = Character;
CharacterAnimationControler.Action = 'shake';