main :-
	write('Introduce the file name: '),

	%  Get the standard input
	read_line_to_codes(user_input,Name),
	atom_codes(V,Name),

	% Create file name
	string_concat(V,'.txt',FileName),

	% Write File
	write_file(FileName),

	% Read File
	% read_file(FileName),

	write('End of program').

write_file(FileName) :-
	% Open File
	open(FileName,write,Stream), 

	% Writing
	write(Stream,'test on file'),  nl(Stream), 
	write(Stream,'second text'),  nl(Stream), 
	write(Stream,'third text'),  nl(Stream), 
	
	% Close File
	close(Stream).

read_file(FileName) :-
	% Open File
	open(FileName, read, Stream),
	
	% Reading File
	repeat,
	read(Stream, X),
	write(X), nl,
	X == end_of_file,
	
	% Close File
	close(Stream).