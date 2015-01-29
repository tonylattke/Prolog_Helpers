%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Tuples %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Tuple
get_first((X,_),X).
% get_first(('Bruce','Wayne'),X). -> X = 'Bruce'

% Triplet
get_first_3((X,_,_),X).
% get_first_3(('Red', 'Green', 'Blue'),X). -> X = 'Red'

% N-Tuple
get_first_N((X,_,_,_,_,_),X).
% get_first_N(('Batman', 'Superman', 'Wonder Woman', 'Green Light', 'Flash', 'Jonn'),X). -> X = 'Batman'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Empty list 	[]

% Concat 		[X|Xs]

% Length
% length(+List,+Length)
% length([4,8,15,16,23,42],L). -> L = 6

% List of lists
% [[1,2,3,4], [5,6,7,8], [9,10,11,12]]

% Sort
% sort([5, 13, 2, 1, 21, 1, 8, 3], L). -> L = [1, 2, 3, 5, 8, 13, 21]

% Reverse
% reverse([5, 13, 2, 1, 21, 1, 8, 3], L). -> L = [3, 8, 1, 21, 1, 2, 13, 5]

% Access
% nth0(4, [4, 8, 15, 16, 23, 42], Exit). -> Exit = 23

% Head
head([X|_],X).

% Tail
tail([_|Xs],Xs).

% Is empty
is_empty([]).
is_empty([_|_]) :- 
	false.