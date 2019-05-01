sublist([],L).
sublist(S,[]):-false.
sublist([H1|T1],[H1|T2]):-sublist(T1,T2).
sublist([H1|T1],[H2|T2]):-sublist([H1|T1],T2).
 