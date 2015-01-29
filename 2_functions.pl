%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Functions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Take value and make operation

% Even or not
% op_even(+Value, -Result)
op_even(Value,true) :-
	Aux is Value mod 2,
	is_zero(Aux),!.
op_even(_,false).

is_zero(0).

%%% Function with if .. then .. else ..

% Factorial of number
% factorial(+Value, -Result)
factorial(Value,Exit) :-
	(Value =< 1					% if Value <= 1
		-> Exit = 1
	;	Aux is Value - 1, 		% else
		factorial(Aux,Exit0), 
		Exit is Exit0 * Value
	).

%%% Function with if .. then .. else if .. then .. else ..

% Fibonacci
% fibonacci(+Value, -Result)
fibonacci(Value,Exit) :-
	(Value =:= 0				% if Value == 0
		-> Exit = 0
	;Value =:= 1				% if Value == 1
		-> Exit = 1
	;	Aux is Value - 1,		% else
		fibonacci(Aux,Exit0),
		Aux2 is Value - 2,
		fibonacci(Aux2,Exit1),
		Exit is Exit0 + Exit1
	).

%%% Pattern matching

% Fibonacci 2
% fibonacci2(+Value, -Result)
fibonacci2(0,0).
fibonacci2(1,1).
fibonacci2(Value,Exit) :-
	Aux is Value - 1,
	fibonacci2(Aux,Exit0),
	Aux2 is Value - 2,
	fibonacci2(Aux2,Exit1),
	Exit is Exit0 + Exit1.