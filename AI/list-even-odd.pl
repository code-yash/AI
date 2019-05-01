even([]).
even([_|T]):- odd(T).
odd([_]).
od([_|T]):-even(T).
