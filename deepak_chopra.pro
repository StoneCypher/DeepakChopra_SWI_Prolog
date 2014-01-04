
:- module(deepak_chopra, [

    start/1,
    middle/1,
    qualifier/1,
    finish/1

]).

start(X)     :- random_member(X, ["Experiential truth ", "The physical world ", "Non-judgment ",       "Quantum physics "]).
middle(X)    :- random_member(X, ["nurtures ",           "projects onto ",      "imparts reality to ", "constructs with "]).
qualifier(X) :- random_member(X, ["abundance of ",       "the barrier of ",     "self-righteous ",     "potential "      ]).
finish(X)    :- random_member(X, ["marvel.",             "choices.",            "creativity.",         "actions."        ]).

speak(Words) :-

    start(S),
    middle(M),
    qualifier(Q),
    finish(F),

    append(S, M, FirstHalf),
    append(Q, F, SecondHalf),

    append(FirstHalf, SecondHalf, Words),

    format("~n~s~n~n",[Words]).
