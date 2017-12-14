man(Y) :- Y=ivan; Y=petr; Y=andrew; Y=vasily.
woman(X) :- X=anna; X=julia; X=maria; X=tatyana.
condition(X,Y) :- (not(X=anna), not(Y=ivan)) -> (X=julia, Y=ivan).
condition(X,Y) :- (X=anna , Y=petr) -> (not(X=julia), not(Y=ivan)).
condition(X,Y) :- (not(X=maria), not(Y=vasily)) -> (X=julia,Y=andrew).
condition(X,Y) :- (X=julia, Y=petr) -> (X=tatyana, Y=ivan).
condition(X,Y) :- (not(X=maria), not(Y=petr)) -> (not(X=tatyana), not(Y=ivan)).
condition(X,Y) :- (X=julia, Y=andrew) -> (X=maria, Y=ivan).
% ?- condition(X,Y).
