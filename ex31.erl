-module (ex31).
-export ([sum/1,sum/2]).

sum(0) ->0;
sum(Num) when Num > 0 -> Num + sum(Num-1).

sum(N, M) when N < M -> sum(M) - sum(N);
sum(N, M) when N == M -> N.