smallest([Head], Head).
smallest([Head | Tail], Result) :-
	smallest(Tail, R),
	Result is min(Head, R).
