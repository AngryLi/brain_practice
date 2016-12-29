count(0, []).
count(C, [Head|Tail]):- count(TailC, Tail), C is TailC + 1.

sum(0, []).
sum(Total, [Head|Tail]) :- sum(TailSum, Tail), Total is Head + TailSum.

average(Average, List) :- sum(Sum, List), count(Count, List), Average is Sum/Count.

