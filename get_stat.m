function s = get_stat(BASE,IV,EV,LEVEL,mult,hit_pt)
%function s = get_stat(BASE,IV,EV,LEVEL,mult)
%return stat based on base, individual value,
%effort value, level, multiplier, and if it is hit_pt


  temp = 2*BASE+IV+floor(EV/4);
  if hit_pt
    s = floor(temp*LEVEL/100)+LEVEL+10;
  else
    s = (floor(temp*LEVEL/100)+5)*mult;
  end
