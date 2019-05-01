delete_occ(N,[],[]).
delete_occ(N,[N|T],R):-delete_occ(N,T,R).
delete_occ(N,[H|T],[H|R]):-delete_occ(N,T,R).