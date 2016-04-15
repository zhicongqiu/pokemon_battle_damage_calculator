function [stat_base] = main_report(which_one)

%input the hp and 5V, IV, EV, LEVEL, and NATURE
temp_str = strcat(which_one,' report system...\n');
fprintf(temp_str);
fprintf('type re anytime to restart...\n');
fprintf('type skip to skip the current entry...\n');
fprintf('type top anytime to return to previous edit...\n');
fprintf('type end to break out... \n');

stat_base = zeros(1,5);

%user specified base stat
i=1;
while i<=7 && i>=1
  temp = get_base_from_user(i);
  if strcmp(temp,'re')
    i=0;
    continue;
  elseif strcmp(temp,'top')
    %return to previous
    if i==1
      continue;
    else
      i = i-1;
    end
  elseif strcmp(temp,'skip')
    i = i+1;
  elseif strcmp(temp,'end')
    break;
  else
    if i==7 
      if strcmp(lower(temp),'y')||...
	 strcmp(lower(temp),'yes')
	 break;
      elseif strcmp(lower(temp),'n')||...
	     strcmp(lower(temp),'no')
	fprintf('re-enter speed, top, skip or end:\n');
	i = i-1;
      end
    else
      stat_base(i) = str2num(temp);
    end
    i = i+1;
  end  
end

fprintf(strcat(which_one,' report has ended. \n'));
