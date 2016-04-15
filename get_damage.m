function [d_low,d_high] = get_damage(atk,def,base_power,LEVEL,modifier)
%function [d_low,d_high] = get_damage(atk,def,base_power,LEVEL,modifier)

  temp = (2*LEVEL+10)/250*atk/def*base_power+2;
  d_low = temp*modifier(1);
  d_high = temp*modifier(2);
