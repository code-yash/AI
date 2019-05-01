remove(N,[HEAD|TAIL],[HEAD|R]):-N<=0,write("Inapproprite value entered!!").
remove(1, [HEAD|TAIL], TAIL).



remove(N, [HEAD|TAIL], [HEAD|R]):- N1 is N-1,
        remove(N1, TAIL, R).