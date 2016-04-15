function [sV_stat,mult_all] = get_all_stat(sV,all_IV,all_EV,LEVEL,NATURE)
%function s = get_all_stat(hp,5V,all_IV,all_EV,LEVEL,NATURE)
%get all stat based on initial value

  sV_stat = zeros(1,6);
  %hp stat is different from the others
  sV_stat(1) = get_stat(sV(1),all_IV(1),all_EV(1),LEVEL,1,1);
  %get stat multiplier
  mult_all = get_mult(NATURE);

  for i=2:6
      sV_stat(i) = ...
      get_stat(sV(i),all_IV(i),all_EV(i),LEVEL,mult_all(i-1),0);
  end
