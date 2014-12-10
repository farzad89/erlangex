-module(ex35).
-export([filter/2, reverse/1, concat/1,flatten/1]).

filter([],_Max) -> [];
filter([H | T],Max)  when H < Max -> [H|filter(T,Max)];
filter([_ | T],Max) -> filter(T,Max).

reverse(List) -> reverse(List,[]).
reverse([],Acc) -> Acc;
reverse([H | T],Acc) -> reverse(T,[H|Acc]).

concat([]) -> [];
concat([H | T]) -> H ++ concat(T).


flatten(List) -> reverse(flatten(List,[])).

flatten([],Acc) -> Acc;
flatten([H | T],Acc) when is_list(H) -> flatten(T, flatten(H,Acc));
flatten([H | T],Acc) -> flatten(T,[H|Acc]).