function temp = get_base_from_user(indicator)

  if indicator == 1
    temp = input('enter hp: ','s');
  elseif indicator == 2
    temp = input('enter atk: ','s');
  elseif indicator == 3
    temp = input('enter def: ','s');
  elseif indicator == 4
    temp = input('enter sp atk: ','s');
  elseif indicator == 5
    temp = input('enter sp def: ','s');
  elseif indicator == 6
    temp = input('enter speed: ','s');
  elseif indicator == 7
    temp = input('confirm (y)es or (n)o: ','s');
  end
