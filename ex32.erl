-module(ex32).
-export([reverse_create/1, create/1]).

reverse_create(1) -> [1];
reverse_create(Num) when Num > 1 -> [Num|reverse_create(Num-1)].

create(Num) -> create(Num,[]).
create(1,List) -> [1|List];
create(Num, List) when Num > 1 -> create(Num-1, [Num|List]). 