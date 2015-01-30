%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Datetime %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Now
now(Date) :-
	get_time(X),
	stamp_date_time(X, Date, local).

% Now - 2 Hours
now_minus_2_hours(Date) :-
	get_time(X),
	Aux is X - 60*60*2,
	stamp_date_time(Aux, Date, local).

% Get year
year(Y) :-
	get_time(Value),
	stamp_date_time(Value, DT, local),
	date_time_value(year, DT, Y).
% year, month, day, hour, minute, second

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Math %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Elemental numbers

% pi

% e

phi(X) :-
	X is (1 + sqrt(5))/2.

% Operations

% sqrt(X).
% log(X).				% Default base e
% log10(X).				% Default base 10
% truncate(3.1416).		-> 3
% round(3.1416).		-> 3
% exp(X).

result_1(X) :-
	X is sin(3.1416).

result_2(X) :-
	X is cos(3.1416).

result_3(X) :-
	X is tan(3.1416).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Random %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Random number betwen 0 and 1
% random(X).

% Random int on range
% random_between(+Lower, +Up, -Result)

% Random member of list
% random_between(-Output, +List)

% Random Permutation of list
% random_permutation(+List, -Permutation)