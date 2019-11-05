insert(Elem, [], [Elem]).
insert(Elem, [Head | Tail], Result) :-
	Head < Elem,
	insert(Elem, Tail, R1),
	append([Head], R1, Result).
insert(Elem, [Head | Tail], Result) :-
	Head >= Elem,
	append([Elem, Head], Tail, Result).

insertsort(L, Result) :- insertsort(L, [], Result).

insertsort([], [], []).
insertsort([Head], [], [Head]).
insertsort([], L, L).
insertsort([Head | Tail], Current, Result) :- 
	insert(Head, Current, R1),
	insertsort(Tail, R1, Result).
