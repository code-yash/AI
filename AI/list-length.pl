
list_len([],0).
list_len([_|T],L):-
                  list_len(T,L1),
				  L is L1+1.
				  

member(X,[X|Tail]).
        
           member(X,[H|Tail]):- member(X,Tail),
		                           write(X),write(" is member").
