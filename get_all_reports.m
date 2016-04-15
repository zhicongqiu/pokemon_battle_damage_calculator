function [POKEMON] = ...
	 get_all_reports(BASE,IV,EV,LEVEL,NATURE,vb)
  %function [POKEMON] = get_all_reports(BASE,IV,EV,LEVEL,NATURE,vb)
  %get all the stat report from a pokemon
  %output all stats if vb is true
  addpath('core_script/');
  %get name
  poke_name = input('enter pokemon name: ','s');
  %get base stat
  if isempty(BASE)
    fprintf('start entering base stat: \n');
    [base_stat] = main_report('base');
  else
      base_stat = BASE;
  end
  if isempty(IV)
    fprintf('start entering individual value (IV) stat: \n');
    [IV] = main_report('IV');
  end
  if isempty(EV)
    fprintf('start entering effort value (EV) stat: \n');
    [EV] = main_report('EV');
  end
  if isempty(LEVEL)
    LEVEL=input('enter level... (d)efault = 50: ','s');
    if strcmp(LEVEL,'default')...
       ||strcmp(LEVEL,'d')
      LEVEL = 50;
    else
      LEVEL = str2num(LEVEL);
    end
  end
  if isempty(NATURE)
    NATURE = input('enter pokemon nature... (d)efault = hardy: ','s');
    if strcmp(NATURE,'default')...
       ||strcmp(NATURE,'d')
      NATURE = 'hardy';
    end
  end
  if vb
     fprintf(strcat(poke_name,' LV. ',int2str(LEVEL),'\n'));
     fprintf(strcat(NATURE,'\n'));
     fprintf('base stat (hp,atk,def,sp_atk,sp_def,spe):\n');
     disp(base_stat);
     fprintf('IV stat (hp,atk,def,sp_atk,sp_def,spe):\n');
     disp(IV);
     fprintf('EV stat (hp,atk,def,sp_atk,sp_def,spe):\n');
     disp(EV);
  end

  fprintf('calculate its actual stats... \n');
  [sV_actual,mult] = get_all_stat(base_stat,IV,EV,LEVEL,NATURE);
  fprintf('actual 6V are: \n');
  disp(sV_actual);
  POKEMON = struct;
  POKEMON.name = poke_name;
  POKEMON.base_stat = base_stat;
  POKEMON.IV = IV;
  POKEMON.EV = EV;
  POKEMON.LEVEL = LEVEL;
  POKEMON.sV_actual = sV_actual;
  POKEMON.NATURE = NATURE;
  POKEMON.mult = mult;
  fprintf('done...\n');
			
