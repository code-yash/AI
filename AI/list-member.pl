member(H,[H|T]).
member(H,[H1|T]):- member(H,T).