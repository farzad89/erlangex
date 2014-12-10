-module (ex33).
-export ([printnum/1,printeven/1]).

printnum(Num) -> io:format("~p~n",[ex32:create(Num)]).

printeven(Num) -> io:format("~p~n",[create_e(Num)]).

create_e(N) -> create_e(N,[]).
create_e(2,L) -> [2|L];
create_e(N,L) when N > 2 , (N rem 2 == 0) -> create_e(N-1, [N|L]).