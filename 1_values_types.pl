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