-module(ex35).
-export([filter/2]).



filter([],_Max) -> [];
filter([H | T],Max)  when H < Max -> [H|filter(T,Max)];
filter([H | T],Max) -> filter(T,Max).