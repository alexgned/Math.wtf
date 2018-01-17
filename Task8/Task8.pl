c1(Ivan) :- not(Ivan = anna), !, Ivan = julia.
c1(Ivan).
c2(Peter, Ivan) :- Peter = anna, !, not(Ivan = julia).
c2(Peter, Ivan).
c3(Vasiliy, Andrew) :- not(Vasiliy = mary), !, Andrew=julia.
c3(Vasiliy, Andrew).
c4(Peter, Ivan) :- Peter = julia, !, Ivan=tatyana.
c4(Peter, Ivan).
c5(Peter, Ivan) :- not(Peter = mary), !, not(Ivan = tatyana).
c5(Peter, Ivan).
c6(Andrew, Ivan) :- Andrew = julia, !, Ivan = mary.
c6(Andrew, Ivan).
del(X, [H|T], [H|S]) :- X \= H, del(X, T, S).
del(X, [X|T], T).
eq([H|T],L) :- member(H, L), del(H, L, R), eq(T, R).
eq([],[]).
family(X) :- X=[[ivan,Ivan],[peter,Peter],[vasiliy,Vasiliy],[andrew,Andrew]], eq([Ivan,Peter,Vasiliy,Andrew],[mary,julia,anna,tatyana]), c1(Ivan), c2(Peter,Ivan), c3(Vasiliy,Andrew), c4(Peter,Ivan), c5(Peter,Ivan), c6(Andrew,Ivan).
% ?-family(X).
% Result: X = [[ivan, julia], [peter, tatyana], [vasiliy, mary], [andrew, anna]].
% Проверял на https://swish.swi-prolog.org/
