function modifier = get_modifier(STAB,TYPE,CT,other)
%calculate modifier based on: 
%STAB: if the attack is same type
%TYPE: if there is effectiveness
%CT: if it is critical hit
%other: others such as weather, held item, abilities

  modifier = STAB*TYPE*other*[0.85 1]; 
  if CT
    modifier = modifier*1.5;
  end
