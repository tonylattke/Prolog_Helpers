%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Types and values %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Using Strings and Concatenation
hello(Name,Exit) :-
	string_concat('Hello ',Name,Exit).

% Using Integer
hoursToMinutes(Hours, Minutes):-
	Minutes is 60 * Hours.

% Using Float
celciusToFarenheit(Celcius,Farenheit) :-
	Farenheit is 32 + Celcius * (9.0/5).

% Multiline string
multi(X,S) :-
	string_concat('Lorem ipsum dolor sit amet, consectetur adipiscing elit.
	Phasellus mattis ac tortor sed fringilla. Etiam aliquam
	turpis sit amet nisi molestie, nec accumsan massa tempus.',X,S).

% Boolean
value(true).
value(false).

% Constants
value(batman).
value(ironman).
value(subzero).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Operating Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plus
plus(A,B,C) :-
	C is A + B.

% Minus
minus(A,B,C) :-
	C is A - B.

% Multiply
multiply(A,B,C) :-
	C is A * B.

% Divide
divide(A,B,C) :-
	C is A / B.

% Module
module(A,B,C) :-
	C is A mod B.

% Pow
pow(_,0,1).
pow(A,B,C) :- 
	B > 0,
	!, 
	B1 is B -1, 
	pow(A,B1,C1), 
	C is A * C1.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Strings operations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% replace(+ Replace_value, +Replacement_value, +String, -Exit)
replace(_,_,[],[]) :- !.
replace(X,Y,[X|XS],[Y|Z]):-
	replace(X,Y,XS,Z).
replace(X,Y,[R|XS],[R|Z]):-
	X \= R, 
	replace(X,Y,XS,Z).

% Replace on string
% replace(",",".","127,0,0,1",X),atom_codes(V,X). ->  V = '127.0.0.1'

% sub String
% sub_string('Lorem ipsum dolor sit amet', 0, 1, _, X). -> 'L'
% sub_string('Lorem ipsum dolor sit amet', 6, 5, _, X). -> 'ipsum'
% sub_string('Lorem ipsum dolor sit amet', 0, 5, _, X). -> 'Lorem'
% sub_string('Lorem ipsum dolor sit amet', 6, 20, _, X). -> 'ipsum dolor sit amet'

% till_last(+String, +Position_initial, -Exit)
till_last(X,P,Exit) :-
	string_length(X,L),
	P < L,
	Aux is L - P,
	sub_string(X,P,Aux,_,Exit).
% till_last('Lorem ipsum dolor sit amet',6,X). -> X = 'ipsum dolor sit amet'

% take_from(+String, +Position_end, -Exit)
take_from(X,P,Exit) :-
	string_length(X,L),
	P < L,
	sub_string(X,0,P,_,Exit).
% take_from('Lorem ipsum dolor sit amet',5,X). -> X = 'Lorem'