!(0,1) :- !.
!(X,Y) :-
     X1 is X - 1,
    !(X1,Y1),
    Y is X*Y1.
:-arithmetic_function(!/1).
:-op(300, yf, !).

% Jakie problemy to tworzy? Opr�cz tego, �e trzeba tak dziwacznie wywo�ywa� funkcj�
% ( N is 3'!!'), to nie wiem. ;)
'!!'(0,0) :- !.
'!!'(1,1) :- !.
'!!'(X,Y) :-
    0 is X mod 2,!,
    X1 is X - 1,
    '!!'(X1,Y).
'!!'(X,Y) :-
    X1 is X - 2,
    '!!'(X1,Y1),
    Y is Y1 * X.
:-arithmetic_function('!!'/1).
:-op(300, yf, '!!').
