element_at(1,[H|T],H).
element_at(N,[H|T],X):- N1 is N-1,element_at(N1,T,X).