-module(db).
-export([new/0,destroy/1, write/3, delete/2, read/2,match/2]).


new() -> [].

%not working!
destroy(List) -> apply(shell_default, f, [List]).

write(Name, City, Old) -> [{Name, City}|Old].

%read(Name, [ H | T ]) ->  

delete (_, []) -> [];
delete (Key, [ {Key, _} | T ]) -> T;
delete (Key, [ H | T]) -> [ H | delete(Key, T)].

read ( _ , []) -> [];
read (Key, [{Key, City} | _]) -> {ok, City};
read (Key, [ _ | T]) -> read(Key, T).

match (_ , []) -> [];
match (Key, [{Person,Key}|T]) -> [Person | match (Key, T)];
match (Key, [_|T]) -> match(Key,T).
