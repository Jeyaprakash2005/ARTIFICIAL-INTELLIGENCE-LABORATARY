% Define the base cases
fib(0, 0).
fib(1, 1).
% Define the recursive rule
fib(N, F) :-
 N > 1,
 N1 is N - 1,
 N2 is N - 2,
 fib(N1, F1),
 fib(N2, F2),
 F is F1 + F2.
% Define a predicate to print the series
fib_series(N) :-
 N > 0,
 fib_series(0, N).
fib_series(N, N).
fib_series(A, N) :-
 A < N,
 fib(A, F),
 write(F), write(' '),
 A1 is A + 1,
 fib_series(A1, N).
