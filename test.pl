reply(Query):-
        member(search(Args), Query),
        member(action=Action, Query),
        member(arg=Arg, Query),
        call(Action, Arg).  