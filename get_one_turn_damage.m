function [d remain_HP]= ...
	 get_one_turn_damage(OFFENDER,DEFENDER,BASE_POWER,...
			     STAB,TYPE,CT,other,physical)
%function [d remain] = get_one_turn_damage(OFFENDER,DEFENDER,BASE_POWER,...
%				 STAB,TYPE,CT,other,physical)
%
%get one-turn damage attack
%modify this later to self-deduct TYPE and STAB

%get multiplier from user-input
modifier = get_modifier(STAB,TYPE,CT,other);
if physical
  atk = OFFENDER.sV_actual(2);
  def = DEFENDER.sV_actual(3);
else
  atk = OFFENDER.sV_actual(4);
  def = DEFENDER.sV_actual(5);
end

%assume level 50
[d_low,d_high] = get_damage(atk,def,BASE_POWER,50,modifier);
%return lowest and highest damage point
d = [d_low d_high];
remain_HP = DEFENDER.sV_actual(1)-d;
fprintf('damage range (low,high): \n');
disp(d);
fprintf('defender remaining HP (low,high): \n');
disp(remain_HP);
