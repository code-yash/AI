sum([],0).


sum([HEAD|TAIL],X):- sum(TAIL,Y),
                     X is HEAD+Y.