list_member(A,[A|_]).
list_member(A,[_|B]):- list_member(A,B).

list_length([],0).
list_length([_|B],N):- list_length(B,N1), N is N1+1.

%CONCATINATION
merge([],L1,L1).
merge([A|L1],L2,[A|L3]):- merge(L1,L2,L3).

union([X|A],B,[X,N]):- \+ member(X,B), union(A,B,N).
union([X|A],B,[N]):- member(X,B), union(A,B,N).
union([],A,A).

intersection([X|A],B,W):- \+ member(X,B), intersection(A,B,W).
intersection([X|A],B,[X,W]):- member(X,B), intersection(A,B,W).
intesection([],A,[]).

mergesort([],[]).
mergesort([A],[A]).
mergesort([A,B|R],S):- split([A,B|R], L1, L2),
    mergesort(L1,S1), mergesort(L2,S2), merge(S1,S2,S).
split([],[],[]).
split([A],[A],[]).
split([A,B|R],[A|RA],[B|RB]):- split(R,RA,RB).
merge([],[],[]).
merge([A],[],[A]).
merge([A|RA],[B|RB],[A|W]):- A=<B, merge(RA,[B|RB],W).
merge([A|RA],[B|RB],[B|W]):- A>B, merge([A|RA],RB,W).

bs(UL,SL):- swap(UL,S2L),!,printlist(S2L),bs(S2L,SL).
bs(SL,SL).
swap([A,B|S2L], [B,A|S2L]):- A>B.
swap([Z|S2L],[Z|S3L]):- swap(S2L,S3L).
printlist([]):-  nl.
printlist([A|S2L]):- write(A),write(' '), printlist(S2L).

isert([H|List], Result):-
    isert(List,Temp),
    printlist(Temp),
    insertItem(H,Temp,Result).

isert([],[]).
insertItem(X,[H|List],[H|Result]):-
    H<X, !,
    insertItem(X, List, Result).
insertItem(X,List,[X|List]).
printlist([]):-  nl.
printlist([A|List]):- write(A),write(' '), printlist(List).

qs([X|Xs],Ys):-
    partition(Xs,X,Left,Right),
    qs(Left,Ls),
    qs(Right,Rs),
    listappend(LS,[X|Rs],Ys).
qs([],[]).

partition([X|Xs],Y,[X|Ls],Rs):-
    X=<Y, partition(Xs,Y,Ls,Rs).
partition([X|Xs],Y,Ls,[X|Rs]):-
    X>Y, partition(Xs,Y,Ls,Rs).
partition([],Y,[],[]).

listappend([],Ys,Ys).
listappend([X|Xs],Ys,[X|Zs]):- listappend(Xs,Ys,Zs).

max(X,Y,MAX):- X>=Y,!,MAX=X;MAX=Y.
is_member(N,[N|L]):-!.
is_member(N,[A|L]):- is_member(N,L).
notrace.
listing.

addtolist(X,L,L):- member(X,L),!.
addtolist(X,L,[X|L]).


