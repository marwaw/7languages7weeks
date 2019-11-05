rvrs([], []).
rvrs([H | T], X) :- rvrs(T, R), append(R, [H], X).
