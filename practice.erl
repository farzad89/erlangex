-module(practice).
-export([greet/2, head/1, second/1, fifth/1, same/2]).

greet(male, Name) ->
	io:format("Hello, Mr. ~s!", [Name]);
greet(female, Name) ->
	io:format("Hello, Mrs. ~s!", [Name]);
greet(_, Name) ->
	io:format("Hello, ~s!", [Name]).

head([H|_]) -> H.

second([_,S|_]) ->S.

fifth([_,_,_,_,F|_]) -> F.

same(X,X) ->true;
same(_,_) ->false.