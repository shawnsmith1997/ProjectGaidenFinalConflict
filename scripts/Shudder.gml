//Have the character nod his head
var Character, Iterations;
Character = argument0;//who is nodding?
//Iterations = argument1;//number of times we nod the character's head

Character.visible = false;
instance_create(Character.x,Character.y,CharacterAnimationControler);
CharacterAnimationControler.sprite_index = Character.sprite_index;
CharacterAnimationControler.Iterations = 2;
CharacterAnimationControler.CurrentObject = Character;
CharacterAnimationControler.Action = 'shudder';