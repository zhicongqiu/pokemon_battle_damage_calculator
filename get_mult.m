function mult_all = get_mult(NATURE)
%function mult_all = get_mult(NATURE)
%get all multiplier on 5V
	 
  %work on lower case
  NATURE = lower(NATURE);
  mult_all = ones(1,5);  
  %get NATURE multiplier
  if strcmp(NATURE,'lonely')
    mult_all(1) = 1.1;
    mult_all(2) = 0.9;
  elseif strcmp(NATURE,'adamant')
    mult_all(1) = 1.1;
    mult_all(3) = 0.9;
  elseif strcmp(NATURE,'naughty')
    mult_all(1) = 1.1;
    mult_all(4) = 0.9;
  elseif strcmp(NATURE,'brave')
    mult_all(1) = 1.1;
    mult_all(5) = 0.9;
  elseif strcmp(NATURE,'bold')
    mult_all(2) = 1.1;
    mult_all(1) = 0.9;
  elseif strcmp(NATURE,'impish')
    mult_all(2) = 1.1;
    mult_all(3) = 0.9;
  elseif strcmp(NATURE,'lax')
    mult_all(2) = 1.1;
    mult_all(4) = 0.9;
  elseif strcmp(NATURE,'relaxed')
    mult_all(2) = 1.1;
    mult_all(5) = 0.9;
  elseif strcmp(NATURE,'modest')
    mult_all(3) = 1.1;
    mult_all(1) = 0.9;
  elseif strcmp(NATURE,'mild')
    mult_all(3) = 1.1;
    mult_all(2) = 0.9;
  elseif strcmp(NATURE,'rash')
    mult_all(3) = 1.1;
    mult_all(4) = 0.9;
  elseif strcmp(NATURE,'quiet')
    mult_all(3) = 1.1;
    mult_all(5) = 0.9;
  elseif strcmp(NATURE,'calm')
    mult_all(4) = 1.1;
    mult_all(1) = 0.9;
  elseif strcmp(NATURE,'gentle')
    mult_all(4) = 1.1;
    mult_all(2) = 0.9;
  elseif strcmp(NATURE,'careful')
    mult_all(4) = 1.1;
    mult_all(3) = 0.9;
  elseif strcmp(NATURE,'sassy')
    mult_all(4) = 1.1;
    mult_all(5) = 0.9;
  elseif strcmp(NATURE,'timid')
    mult_all(5) = 1.1;
    mult_all(1) = 0.9;
  elseif strcmp(NATURE,'hasty')
    mult_all(5) = 1.1;
    mult_all(2) = 0.9;
  elseif strcmp(NATURE,'jolly')
    mult_all(5) = 1.1;
    mult_all(3) = 0.9;
  elseif strcmp(NATURE,'naive')
    mult_all(5) = 1.1;
    mult_all(4) = 0.9;
  elseif strcmp(NATURE,'hardy')||...
	 strcmp(NATURE,'docile')||...
	 strcmp(NATURE,'bashful')||...
	 strcmp(NATURE,'quirky')||...
	 strcmp(NATURE,'serious')
    return;
  else
    disp('wrong nature...return all ones');
    return;
  end
