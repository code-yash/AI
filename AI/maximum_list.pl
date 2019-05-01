max([HEAD],HEAD).

max([HEAD|TAIL],X):- max(TAIL,Y), 
                        HEAD<Y,X is Y;
                        X is HEAD.