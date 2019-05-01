conc([],L,L).
conc([H|T],L,[H|T1]):- conc(T,L,T1).