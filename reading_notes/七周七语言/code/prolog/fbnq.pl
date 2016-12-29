f(1, 1).
f(1, 2).
f(Result, Start) :- Start > 2, S1 is Start - 1, S2 is Start - 2, f(R1, S1), f(R2, S2), Result is R1 + R2.

