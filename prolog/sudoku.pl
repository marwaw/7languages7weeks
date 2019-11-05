valid([]).
valid([Head | Tail]) :-
	fd_all_different(Head),
	valid(Tail).

sudoku(Puzzle, Solution) :-
	Solution = Puzzle,
	Puzzle = [S11, S12, S13, S14,
			S21, S22, S23, S24,
			S31, S32, S33, S34,
			S41, S42, S43, S44
	],
	fd_domain(Puzzle, 1, 4),

	Row1 = [S11, S12, S13, S14],
	Row2 = [S21, S22, S23, S24],
	Row3 = [S31, S32, S33, S34],
	Row4 = [S41, S42, S43, S44],

	Col1 = [S11, S21, S31, S41],
	Col2 = [S12, S22, S32, S42],
	Col3 = [S13, S23, S33, S43],
	Col4 = [S14, S24, S34, S44],

	Sq1 = [S11, S12, S21, S22],
	Sq2 = [S13, S14, S23, S24],
	Sq3 = [S31, S32, S41, S42],
	Sq4 = [S33, S34, S43, S44],

	valid([Row1, Row2, Row3, Row4,
		Col1, Col2, Col3, Col4,
		Sq1, Sq2, Sq3, Sq4]).


sudoku6(Puzzle, Solution) :-
	Solution = Puzzle,
	Puzzle = [S11, S12, S13, S14, S15, S16,
			S21, S22, S23, S24, S25, S26,
			S31, S32, S33, S34, S35, S36,
			S41, S42, S43, S44, S45, S46,
			S51, S52, S53, S54, S55, S56,
			S61, S62, S63, S64, S65, S66
	],
	fd_domain(Puzzle, 1, 6),

	Row1 = [S11, S12, S13, S14, S15, S16],
	Row2 = [S21, S22, S23, S24, S25, S26],
	Row3 = [S31, S32, S33, S34, S35, S36],
	Row4 = [S41, S42, S43, S44, S45, S46],
	Row5 = [S51, S52, S53, S54, S55, S56],
	Row6 = [S61, S62, S63, S64, S65, S66],

	Col1 = [S11, S21, S31, S41, S51, S61],
	Col2 = [S12, S22, S32, S42, S52, S62],
	Col3 = [S13, S23, S33, S43, S53, S63],
	Col4 = [S14, S24, S34, S44, S54, S64],
	Col5 = [S15, S25, S35, S45, S55, S65],
	Col6 = [S16, S26, S36, S46, S56, S66],

	Sq1 = [S11, S12, S13, S21, S22, S23],
	Sq2 = [S14, S15, S16, S24, S25, S26],
	Sq3 = [S31, S32, S33, S41, S42, S43],
	Sq4 = [S34, S35, S36, S44, S45, S46],
	Sq5 = [S51, S52, S53, S61, S62, S63],
	Sq6 = [S54, S55, S56, S64, S65, S66],

	valid([Row1, Row2, Row3, Row4, Row5, Row6,
		Col1, Col2, Col3, Col4, Col5, Col6,
		Sq1, Sq2, Sq3, Sq4, Sq5, Sq6]).
