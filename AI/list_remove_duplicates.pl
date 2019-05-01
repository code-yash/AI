
member(X,[X|_]).
member(X,[_|T]):- member(X,T).




duplicate([],[]).
duplicate([H|T],R):- member(H,T),duplicate(T,R).

duplicate([H|T],[H|R]):-not(member(H,T)),duplicate(T,R).


