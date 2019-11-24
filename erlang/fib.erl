#!/usr/bin/env escript
-export([main/1]).


%main([]) -> lists:map(fun(x) -> {io:format("",integer_to_list(x))} end, lists:sublist([1,2,3,4,5,5,1,2,3,4,5,6], 10)).


main([N]) -> lists:map(
                    fun(X) ->
                        io:format("~w~n", [X])
                    end,
                    fib(list_to_integer(N))).


fib(N) -> fib(N, 1, 1).
fib(0, _, _) -> [];
fib(N, X, Y) when N > 0 -> [X|fib(N-1,Y, X+Y)].


