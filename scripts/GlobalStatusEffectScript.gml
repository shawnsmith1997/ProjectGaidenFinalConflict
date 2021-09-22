var Message, Append;
Message = '';
//Append = false;


//Message += StatusEffectManaRegain();//Regain MP
Message += StatusEffectPoison();//Poison

Message += StatusEffectBuff();

Message += StatusEffectIsDead();//make sure this runs LAST. It tests for the character's death due to ailment.

if(string_char_at(Message,string_length(Message)) = '#'){//in case there's a leftover # at the end.
    Message = string_delete(Message,string_length(Message),1);
}

return(Message);
