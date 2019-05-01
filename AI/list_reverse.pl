c([],L,L).
c([H|T1],L,[H|T2]):- c(T1,L,T2).

reverse([],[]).
reverse([H|T],R):- reverse(T,R1),c(R1,[H],R).