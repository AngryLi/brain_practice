-module(y).
-export([returnSelf/1]).
-export([doubleAll/1]).

returnSelf(N) -> N.

doubleAll([]) -> [];
doubleAll([Head|Tail]) -> [(Head|Head)|doubleAll(Tail)].
